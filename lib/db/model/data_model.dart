import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 0)
class Producthive  {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String brand;

  @HiveField(2)
  late String name;

  @HiveField(3)
  late String image;

  @HiveField(4)
  late double price;

  @HiveField(5)
  late String colors;

  Producthive({
    required this.id,
    required this.brand,
    required this.name,
    required this.image,
    required this.price,
    required this.colors,
  });
}
