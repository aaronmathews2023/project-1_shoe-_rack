import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shoerack/screens/user_side/BottonNav.dart';
import 'package:shoerack/screens/user_side/payment.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) {
              return BottomNav();
            }));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {
              FirebaseFirestore.instance
                  .collection('cart')
                  .get()
                  .then((snapshot) {
                for (DocumentSnapshot ds in snapshot.docs) {
                  ds.reference.delete();
                }
              });
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
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.data!.docs.isEmpty) {
            return Center(
              child: Text('Your cart is empty.'),
            );
          }

          // Calculate total amount
          double totalAmount = snapshot.data!.docs.fold(
            0,
            (previousValue, doc) => previousValue + doc['price'] * doc['count'],
          );

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
                      return SizedBox(); // Skip rendering if data is null
                    }

                    return ListTile(
                      leading: Image.network(data['image']!),
                      title: Text(data['name']!),
                      subtitle: Text('\$${data['price']}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
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
                            icon: Icon(Icons.add),
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
              SizedBox(height: 16),
              Container(
                color: Colors.yellow,
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Amount: \$${totalAmount.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return PaymentPage(totalAmount: totalAmount);
                        }));
                        
                      },
                      child: Text('Proceed to Payment'),
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
