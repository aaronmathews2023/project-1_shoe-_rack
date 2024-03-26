import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/screens/admin/update.dart';

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
              var shoeId = shoes[index].id;

              var imageUrl = '';

              return Dismissible(
                key: Key(shoeId),
                onDismissed: (direction) {
                  // Delete the item from Firebase
                  FirebaseFirestore.instance
                      .collection('shoes')
                      .doc(shoeId)
                      .delete();
                },
                background: Container(
                  color: Colors.red,
                  child: Icon(Icons.delete, color: Colors.white),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20.0),
                ),
                child: GestureDetector(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            UpdateShoePage(documentId: shoeId),
                      ),
                    );

                    // Refresh the product list after updating the shoe
                    setState(() {});
                  },
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(shoe['leadingImageUrl']),
                        ),
                      ),
                    ),
                    title: Text(shoe['model']),
                    subtitle: Text('\Rs ${shoe['price']}'),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
