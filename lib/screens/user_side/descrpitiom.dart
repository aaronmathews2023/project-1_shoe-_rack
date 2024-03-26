// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shoerack/screens/user_side/payment.dart';

class Product {
  final String id;
  final String brand;
  final String name;
  final String image;
  final double price;
  final String color1;
  final String color2;
  final String color3;
  final String description;

  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.image,
    required this.price,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.description,
  });
}

class Details extends StatefulWidget {
  final String productId;

  const Details({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  late String selectedColor = '';
  Set<int> selectedSizes = {};
  bool isExpanded = false;
  late Product productDetails;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 247, 247),
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Center(
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          toolbarHeight: 39,
        ),
        body: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection('shoes')
              .doc(widget.productId)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              var doc = snapshot.data!;
              productDetails = Product(
                  id: doc.id,
                  brand: doc['brand'],
                  name: doc['model'],
                  image: doc['leadingImageUrl'],
                  price: double.parse(doc['price']),
                  color1: doc['color2'],
                  color2: doc['color3'],
                  color3: doc['color4'],
                  description: doc['description']);
              ValueNotifier<List<String>> imageList = ValueNotifier([
                productDetails.image,
                productDetails.color1,
                productDetails.color2,
                productDetails.color3,
              ]);
              List<String> size = List.from(doc["sizes"]);
              // print(size);
              List<int> intsize = [];
              for (var i = 0; i < size.length; i++) {
                intsize.add(int.parse(size[i]));
              }
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: imageList,
                      builder: (context, value, child) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          height: media.height * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Center(
                            child: CachedNetworkImage(
                              imageUrl: selectedColor.isNotEmpty
                                  ? selectedColor
                                  : productDetails.image,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: media.height * 0.02),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: media.height * 0.1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              // setState(() {
                              selectedColor = imageList.value[index];
                              imageList.notifyListeners();
                              // });
                            },
                            child: Container(
                              width: media.height * 0.1,
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: imageList.value[index],
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: media.height * 0.03),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Product Details:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Brand: ${productDetails.brand}\n'
                            'Model: ${productDetails.name}\n'
                            'Price: \$${productDetails.price.toStringAsFixed(2)}\n',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    buildSizeCheckboxRow(intsize),
                    SizedBox(height: media.height * 0.02),
                    ListTile(
                      leading: const Icon(Icons.local_shipping),
                      title: Text(
                          'FREE Delivery | Delivery in 3 Days: ${formattedFutureDate()}'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.replay_10),
                      title: Text('10 Days Return Policy'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.money),
                      title: Text('Cash on Delivery Available'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Additional  information :',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      productDetails.description,
                    )
                  ],
                ),
              );
            }
          },
        ),
        bottomNavigationBar: Container(
          height: media.height * 0.08,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildBottomButton("ADD TO CART", Colors.cyan, addToCart),
              buildBottomButton1(
                "BOOK NOW",
                Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ValueNotifier<int> select = ValueNotifier(6);
  Widget buildSizeCheckboxRow(List<int> sizes) {
    // select = sizes[0];
    return ValueListenableBuilder(
      valueListenable: select,
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: sizes.map((size) => buildSizeCheckbox(size)).toList(),
          ),
        );
      },
    );
  }

  Widget buildSizeCheckbox(int size) {
    return InkWell(
      onTap: () {
        select.value = size;
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: select.value == size ? Colors.green : Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: InkWell(
          onTap: () {
            select.value = size;
          },
          child: Center(
            child: Text(
              size.toString(),
              style: TextStyle(
                color:
                    selectedSizes.contains(size) ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBottomButton1(
    String text,
    Color color,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  PaymentPage(totalAmount: productDetails.price),
            ));
      },
      child: Container(
        decoration: BoxDecoration(color: color),
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBottomButton(String text, Color color, addToCart) {
    return GestureDetector(
      onTap: () {
        addToCart();
      },
      child: Container(
        decoration: BoxDecoration(color: color),
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  String formattedFutureDate() {
    // Your date formatting logic goes here
    return DateFormat.yMMMd().format(DateTime.now().add(const Duration(days: 3)));
  }

  void addToCart() {
    FirebaseFirestore.instance
        .collection('cart')
        .where('productId', isEqualTo: productDetails.id)
        .get()
        .then((QuerySnapshot querySnapshot) {
      if (querySnapshot.size > 0) {
        // Product already exists in the cart, update count
        querySnapshot.docs.first.reference.update({
          'count': (querySnapshot.docs.first['count'] ?? 1) + 1,
        }).then((_) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Added to Cart'),
                content: const Text('Product has been added to your cart.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Close dialog
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
        }).catchError((error) {
         
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Error updating cart")));
        });
      } else {
        // Product doesn't exist in the cart, add new entry
        FirebaseFirestore.instance.collection('cart').add({
          'productId': productDetails.id,
          'name': productDetails.name,
          'price': productDetails.price,
          'image': productDetails.image,
          'count': 1, // Set initial count to 1
        }).then((_) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Added to Cart'),
                content: const Text('Product has been added to your cart.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Close dialog
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
        }).catchError((error) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Error adding to cart")));
        });
      }
    }).catchError((error) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Error checking cart")));
    });
  }
}
