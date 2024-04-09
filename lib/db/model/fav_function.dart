import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shoerack/db/model/data_model.dart';

ValueNotifier<List<Producthive>> favlist = ValueNotifier([]);
const String favdb = "fav";
//addFav()
AddFav({required Producthive p}) async {
  final box = await Hive.openBox(favdb);
  await box.put(p.id, p);
}

GetFav() async {
  final box = await Hive.openBox(favdb);
  favlist.value = List.from(box.values.toList());
  favlist.notifyListeners();
}
DelFav({required Producthive p}) async {
  final box = await Hive.openBox(favdb);
  await box.delete(p.id );
}


