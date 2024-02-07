import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('shoes').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          var shoes = snapshot.data!.docs;

          return ListView.builder(
            itemCount: shoes.length,
            itemBuilder: (context, index) {
              var shoe = shoes[index].data() as Map<String, dynamic>;

              // Check if colorImages is a list or an object
              var colorImages = shoe['colorImages'];
              var imageUrl = '';

              if (colorImages is List && colorImages.isNotEmpty) {
                imageUrl = colorImages[0];
              } else if (colorImages is String) {
                imageUrl = colorImages;
              }
              // else {
              //   // Handle other cases or provide a default image URL
              //   imageUrl = 'default_image_url';
              // }

              return ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                title: Text(shoe['model']),
                subtitle: Text('\$${shoe['price']}'),
              );
            },
          );
        },
      ),
    );
  }
}
