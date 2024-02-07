
import 'package:flutter/material.dart';

class Product {
  final String brand;
  final String name;
  final String image;

  Product({required this.brand, required this.name, required this.image});
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedBrand = ''; // Updated to store selected brand
  
  List<Product> products = [
    Product(brand: 'Nike', name: 'Air Max', image: 'asset/air nike.png'),
    Product(
        brand: 'Nike',
        name: 'React Infinity',
        image: 'asset/react infinity.png'),
    Product(
        brand: 'Puma', name: 'Future Rider', image: 'asset/future rider.webp'),
    Product(
        brand: 'Puma',
        name: 'RS-X',
        image: 'asset/RS-X-Black-and-White-Unisex-Sneakers.avif'),
    Product(
        brand: 'Adidas',
        name: 'Ultraboost',
        image: 'asset/Ultraboost_1.0_Shoes_Grey_GY7479_01_standard.avif'),
    Product(
        brand: 'Adidas',
        name: 'NMD',
        image: 'asset/NMD_R1_Shoes_Black_GZ9257_01_standard.avif'),
    Product(
        brand: 'Reebok',
        name: 'Classic Leather',
        image: 'asset/reebok-classic-leather-black-gum-gy0954_1.jpg'),
    Product(
        brand: 'Reebok',
        name: 'Nano X',
        image: 'asset/MP000000007775732_1348Wx2000H_202105200918091.webp'),
  ];

  List<Product> getFilteredProducts() {
    if (selectedBrand.isEmpty) {
      return products; // Show all products if no brand is selected
    } else {
      return products
          .where((product) =>
              product.brand.toLowerCase() == selectedBrand.toLowerCase())
          .toList();
    }
  }

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
            // Add the search bar here
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Looking for shoes',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4, // Number of shoe brands
                padding: EdgeInsets.symmetric(
                    horizontal: 16.0), // Padding around each item
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
                      // Handle tap action here
                      setState(() {
                        selectedBrand = brands[index];
                      });
                      print('Tapped on ${brands[index]}');
                    },
                    child: Card(
                      elevation: 6.0,
                      color: selectedBrand == brands[index]
                          ? Colors.lightBlueAccent // Change color on tap
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
                itemCount: getFilteredProducts().length,
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
                            child: Image.asset(
                              getFilteredProducts()[index].image,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            getFilteredProducts()[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
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
