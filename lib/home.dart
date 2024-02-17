import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
List<Product> products = [];
class Product {
  final String id;
  final String brand;
  final String name;
  final String image;
  final double price;
  final String colors;

  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.image,
    required this.price,
    required this.colors,
  });
}

Future<List<Product>> fetchProducts() async {
  
    print('Fetching products...');
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection('shoes').get();
    print('Fetched ${querySnapshot.docs.length} products.');
    
    return querySnapshot.docs.map((doc) {
      return Product(
        id: doc.id,
        brand: doc['brand'],
        name: doc['model'],
        image: doc['leadingImageUrl'],
        price: double.parse(doc['price']),
        colors: doc['colors'],
      );
    }).toList();
  
   

  
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedBrand = '';
  

  // @override
  // void initState() {
  //   super.initState();
  //   fetchProducts().then((fetchedProducts) {
  //     setState(() {
  //       products = fetchedProducts;
  //     });
  //   });
  //   print(products);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .050,
              width: MediaQuery.of(context).size.height * .5,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.category_rounded),
                  ),
                  Text(
                    "Shoe Rack",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .020,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Looking for shoes',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .17,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                itemBuilder: (BuildContext context, int index) {
                  List<String> brands = ['Nike', 'Puma', 'Adidas', 'Reebok'];
                  List<String> images = [
                    'asset/nike.jpg',
                    'asset/puma logo.webp',
                    'asset/adidas logo.png',
                    'asset/reebok-vector-logo.jpg'
                  ];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedBrand = brands[index];
                      });
                    },
                    child: Card(
                      elevation: 6.0,
                      color: selectedBrand == brands[index]
                          ? Colors.lightBlueAccent
                          : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                images[index],
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              brands[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              products[index].image,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            products[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '\$${products[index].price.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
