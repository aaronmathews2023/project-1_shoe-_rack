import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/screens/user_side/payment.dart';

class OrderAccept extends StatefulWidget {
  const OrderAccept({Key? key});

  @override
  State<OrderAccept> createState() => _OrderAcceptState();
}

class _OrderAcceptState extends State<OrderAccept> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("accept").snapshots(),
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
                ? const Center(child: Text('No data'))
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
