import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shoerack/db/model/data_model.dart';

ValueNotifier<List<Producthive>> favlist = ValueNotifier([]);
const String favdb = "fav";
add_fav({required Producthive p}) async {
  final box = await Hive.openBox(favdb);
  await box.put(p.id, p);
}

get_fav() async {
  final box = await Hive.openBox(favdb);
  favlist.value = List.from(box.values.toList());
  favlist.notifyListeners();
}
del_fav({required Producthive p}) async {
  final box = await Hive.openBox(favdb);
  await box.delete(p.id );
}


