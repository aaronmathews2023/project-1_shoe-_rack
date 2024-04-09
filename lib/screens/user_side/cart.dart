import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart'; // Import CachedNetworkImage
import 'package:shoerack/screens/user_side/BottonNav.dart';
import 'package:shoerack/screens/user_side/payment.dart';

// ignore: must_be_immutable
class CartPage extends StatelessWidget {
  List<paymentDetails> paymentdatalist = [];

  CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) {
              return const BottomNav();
            }));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text("Delete"),
                        content: const Text('Are you sure you want to delete?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                              onPressed: () {
                                FirebaseFirestore.instance
                                    .collection('cart')
                                    .get()
                                    .then((snapshot) {
                                  for (DocumentSnapshot ds in snapshot.docs) {
                                    ds.reference.delete();
                                  }
                                  Navigator.pop(context);
                                });
                              },
                              child: const Text("OK"))
                        ],
                      ));
            },
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('cart').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text('Your cart is empty.'),
            );
          }

          double totalAmount = snapshot.data!.docs.fold(
            0,
            (previousValue, doc) => previousValue + doc['price'] * doc['count'],
          );

          // ignore: unused_local_variable
          int i = -1;
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: snapshot.data!.docs
                      .map<Widget>((DocumentSnapshot document) {
                    Map<String, dynamic>? data =
                        document.data() as Map<String, dynamic>?;

                    if (data == null ||
                        data['image'] == null ||
                        data['name'] == null ||
                        data['price'] == null ||
                        data['count'] == null) {
                      return const SizedBox(); // Skip rendering if data is null
                    }
                    String a = data['sizes'].toString();
                    paymentdatalist.add(paymentDetails(
                        id: document.id,
                        totalAmount: data['price'],
                        sizes: [a],
                        image: data['image'],
                        name: data['name']));
                    i++;

                    return ListTile(
                      leading: CachedNetworkImage(
                        // Use CachedNetworkImage widget
                        imageUrl: data['image'],
                        placeholder: (context, url) => Center(
                            child:
                                const CircularProgressIndicator()), // Show circular progress indicator as placeholder
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      title: Text(data['name']!),
                      subtitle: Text(
                        'Rs${data['price']},  Size: ${data['sizes']}',
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              int count = data['count'] ?? 1;
                              if (count > 1) {
                                document.reference.update({'count': count - 1});
                              } else {
                                document.reference.delete();
                              }
                            },
                          ),
                          Text('${data['count'] ?? 1}'),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              int count = data['count'] ?? 1;
                              document.reference.update({'count': count + 1});
                            },
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Amount: \$${totalAmount.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return PaymentPage(
                            paymentdatalist: paymentdatalist,
                            tt: totalAmount.toString(),
                          );
                        }));
                      },
                      child: const Text('Proceed to Payment'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
