import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shoerack/db/model/data_model.dart';
import 'package:shoerack/db/model/fav_function.dart';
import 'package:shoerack/screens/user_side/Favourite.dart';
import 'package:shoerack/screens/user_side/cart.dart';
import 'package:shoerack/screens/user_side/descrpitiom.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedPriceFilter = '';
  String selectedBrand = '';
  TextEditingController searchController = TextEditingController();
  late Box<Product> productsBox;
  late Box<String> favoriteIdsBox;

  // ignore: prefer_collection_literals
  Set<String> favorites = Set();

  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }

  Widget _buildContent() {
    var media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .050,
              width: MediaQuery.of(context).size.height * .6,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.category_rounded),
                  ),
                  const Text(
                    "Shoe Rack",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (_) {
                        return CartPage();
                      }));
                    },
                    icon: const Icon(Icons.shopping_cart),
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
                controller: searchController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: 'Looking for shoes',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _showFilterDialog(context);
                    },
                    icon: const Icon(Icons.filter_list),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .19,
              width: MediaQuery.of(context).size.height * .50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    child: Container(
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
                                  height: media.height * 0.098,
                                  width: media.height * 0.098,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: media.height * 0.015),
                              Text(
                                brands[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('shoes').snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    List<DocumentSnapshot> filteredProducts =
                        snapshot.data!.docs.where((doc) {
                      var product = Product(
                        id: doc.id,
                        brand: doc['brand'],
                        name: doc['model'],
                        image: doc['leadingImageUrl'],
                        price: double.parse(doc['price']),
                        colors: doc['colors'],
                      );

                      // Apply filters
                      bool brandFilter = selectedBrand.isEmpty ||
                          product.brand.toLowerCase() ==
                              selectedBrand.toLowerCase();

                      bool priceFilter = _selectedPriceFilter.isEmpty ||
                          (_selectedPriceFilter == 'less than 5k' &&
                              product.price < 5000) ||
                          (_selectedPriceFilter == 'less than 10k' &&
                              product.price < 10000) ||
                          (_selectedPriceFilter == 'more than 15k' &&
                              product.price > 15000);

                      return brandFilter && priceFilter;
                    }).toList();
                    List<DocumentSnapshot<Object?>> newlist = [];
                    for (int i = 0; i < filteredProducts.length; i++) {
                      var doc = filteredProducts[i];
                      if (searchController.text.isEmpty ||
                          doc['model']
                              .toString()
                              .toLowerCase()
                              .contains(searchController.text.toLowerCase())) {
                        newlist.add(filteredProducts[i]);
                      }
                    }
                    if (newlist.isEmpty) {
                      return const Center(
                        child: Text("No Product Found"),
                      );
                    } else {}
                    return GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: newlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        bool isfav = false;

                        var doc = newlist[index];
                        var product = Product(
                          id: doc.id,
                          brand: doc['brand'],
                          name: doc['model'],
                          image: doc['leadingImageUrl'],
                          price: double.parse(doc['price']),
                          colors: doc['colors'],
                        );
                        for (int i = 0; i < favlist.value.length; i++) {
                          if (favlist.value[i].id == doc.id) {
                            isfav = true;
                          }
                        }
                        print(doc['model']);
                        if (searchController.text.isEmpty ||
                            doc['model'].toString().toLowerCase().contains(
                                searchController.text.toLowerCase().trim())) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return Details(productId: product.id);
                              }));
                            },
                            child: Card(
                              elevation: 6.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Center(
                                            child: CachedNetworkImage(
                                              imageUrl: product.image,
                                              height: 150,
                                              width: 150,
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) =>
                                                  const CircularProgressIndicator(),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          product.name,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          'Rs ${product.price.toStringAsFixed(2)}',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ValueListenableBuilder(
                                    valueListenable: favlist,
                                    builder: (context, value, child) {
                                      return Positioned(
                                        top: 8.0,
                                        right: 8.0,
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.favorite,
                                            color: isfav
                                                ? Colors.red
                                                : Colors.grey,
                                          ),
                                          onPressed: () async {
                                            Producthive p = Producthive(
                                                id: doc.id,
                                                brand: doc['brand'],
                                                name: doc['model'],
                                                image: doc['leadingImageUrl'],
                                                price:
                                                    double.parse(doc['price']),
                                                colors: doc['colors']
                                               
                                                );
                                            isfav
                                                ? await del_fav(p: p)
                                                : await add_fav(p: p);
                                            await get_fav();
                                            isfav = !isfav;
                                          },
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  void _toggleFavorite(String productId) {
    if (favorites.contains(productId)) {
      favoriteIdsBox.delete(productId);
      setState(() {
        favorites.remove(productId);
      });
    } else {
      favoriteIdsBox.put(productId, productId);
      setState(() {
        favorites.add(productId);
      });
    }

    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return FavoritesPage();
    }));
  }

  Future<void> _showFilterDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Price Filter'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                _buildFilterItem('less than 5k'),
                _buildFilterItem('less than 10k'),
                _buildFilterItem('more than 15k'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedPriceFilter = ''; // Clear the filter
                });
                Navigator.of(context).pop();
              },
              child: const Text('Clear'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFilterItem(String filter) {
    return ListTile(
      title: Text(filter),
      onTap: () {
        setState(() {
          _selectedPriceFilter = filter;
        });
        Navigator.of(context).pop();
      },
    );
  }
}
