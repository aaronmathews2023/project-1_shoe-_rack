import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/db/model/data_model.dart';
import 'package:shoerack/db/model/fav_function.dart';
import 'package:shoerack/screens/user_side/descrpitiom.dart'; // Import the Product class

class FavoritesPage extends StatefulWidget {
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
        ),
        body: favlist.value.isEmpty
            ? const Center(
                child: Text("you have not added favourite"),
              )
            : ListView.builder(
                itemCount: favlist.value.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return Details(productId: favlist.value[index].id);
                      }));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            height: 100,
                            imageUrl: favlist.value[index].image,
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(favlist.value[index].name),
                              Text('Rs ${favlist.value[index].price}'),
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          IconButton(
                            onPressed: () async {
                              Producthive p = Producthive(
                                id: favlist.value[index].id,
                                brand: favlist.value[index].brand,
                                name: favlist.value[index].name,
                                image: favlist.value[index].image,
                                price: favlist.value[index].price,
                                colors: favlist.value[index].colors,
                              );
                              await DelFav(p: p);
                              setState(() {
                                GetFav();
                              });
                            },
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ));
  }
}
