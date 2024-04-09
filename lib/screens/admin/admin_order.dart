import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/screens/user_side/payment.dart';

class Order extends StatefulWidget {
  const Order({Key? key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("payments").snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (!snapshot.hasData) {
            return const Center(
              child: Text("No data found"),
            );
          } else {
            List<QueryDocumentSnapshot> sales = snapshot.data!.docs;
            return sales.isEmpty
                ? Center(child: const Text('No data'))
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: sales.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.grey[200],
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  width: 100,
                                  height: 100,
                                  child: CachedNetworkImage(
                                    imageUrl: sales[index]["productImage"],
                                    placeholder: (context, url) {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Product Name: ${sales[index]['productName']}",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Price: ${sales[index]['totalAmount']}",
                                      ),
                                      Text(
                                        "Sizes: ${sales[index]['productSizes']}",
                                      ),
                                      Text(
                                        "FullName: ${sales[index]['fullName']}",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Email: ${sales[index]['email']}",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Phone: ${sales[index]['phoneNumber']}",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "Address: ${sales[index]['address']}",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    paymentDetails pay = paymentDetails(
                                      id: sales[index].id,
                                      totalAmount: sales[index]['totalAmount'],
                                      image: sales[index]["productImage"],
                                      sizes: [sales[index]['productSizes']],
                                      name: sales[index]['productName'],
                                    );
                                    FirebaseFirestore.instance
                                        .collection("accept")
                                        .add(
                                      {
                                        "productName": pay.name,
                                        "totalAmount": pay.totalAmount,
                                        "productImage": pay.image,
                                        "productSizes": pay.sizes,
                                        "address": sales[index]['address'],
                                        "phoneNumber": sales[index]
                                            ['phoneNumber'],
                                        "email": sales[index]['email'],
                                        "fullName": sales[index]['fullName'],
                                      },
                                    );
                                    FirebaseFirestore.instance
                                        .collection("payments")
                                        .doc(pay.id)
                                        .delete();
                                  },
                                  child: const Text("Accept"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    TextEditingController reason =
                                        TextEditingController();
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text('Reason'),
                                          content: TextField(controller: reason,),
                                          actions: [

                                            TextButton(onPressed: (){
                                                paymentDetails pay = paymentDetails(
                                      id: sales[index].id,
                                      totalAmount: sales[index]['totalAmount'],
                                      image: sales[index]["productImage"],
                                      sizes: [sales[index]['productSizes']],
                                      name: sales[index]['productName'],
                                    );
                                    FirebaseFirestore.instance
                                        .collection("decline")
                                        .add(
                                      {
                                        "reason":reason.text,
                                        "productName": pay.name,
                                        "totalAmount": pay.totalAmount,
                                        "productImage": pay.image,
                                        "productSizes": pay.sizes,
                                        "address": sales[index]['address'],
                                        "phoneNumber": sales[index]
                                            ['phoneNumber'],
                                        "email": sales[index]['email'],
                                        "fullName": sales[index]['fullName'],
                                      },
                                    );
                                    FirebaseFirestore.instance
                                        .collection("payments")
                                        .doc(pay.id)
                                        .delete();

                                            }, child: Text('Yes')),
                                            TextButton(onPressed: (){}, child: Text('no')),
                                          ],
                                        );
                                      },
                                    );
                                  
                                  },
                                  child: const Text("Decline"),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
          }
        }
      },
    );
  }
}
