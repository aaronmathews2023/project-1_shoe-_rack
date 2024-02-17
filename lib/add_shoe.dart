import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddShoePage(),
    );
  }
}

class AddShoePage extends StatefulWidget {
  @override
  _AddShoePageState createState() => _AddShoePageState();
}

class _AddShoePageState extends State<AddShoePage> {
  final TextEditingController _modelNameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _colorsController = TextEditingController();
  String imageUrl = '';
  String shoeColor2 = '';
  String shoeColor3 = '';
  String shoeColor4 = '';

  String _selectedBrand = 'Nike';
  List<String> _brands = ['Nike', 'Adidas', 'Puma', 'Reebok'];

  List<String> _colorImages = [];

  XFile? _leadingImage;
  XFile? color2;
  XFile? color3;
  XFile? color4;

  late String _leadingImageUrl = '';
  late String color2url = '';
  late String color3url = ''; // New variable for leading image URL
  late String color4url = '';

  List<String> _sizes = ['6', '7', '8', '9'];
  List<String> _selectedSizes = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Shoe'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Leading Image Picker
                GestureDetector(
                  onTap: () => _pickLeadingImage(),
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: imageUrl.isNotEmpty
                        ? Image.network(imageUrl)
                        : Icon(Icons.add, size: 40),
                  ),
                ),
                Text('Leading Image'),

                SizedBox(
                  height: 20,
                ),

                // Rest of the form
                DropdownButtonFormField<String>(
                  value: _selectedBrand,
                  onChanged: (value) {
                    setState(() {
                      _selectedBrand = value!;
                    });
                  },
                  items: _brands.map((brand) {
                    return DropdownMenuItem(
                      value: brand,
                      child: Text(brand),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: 'Brand',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _modelNameController,
                  decoration: InputDecoration(labelText: 'Model Name'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _priceController,
                  decoration: InputDecoration(labelText: 'Price'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(labelText: 'Description'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: imageUrl.isNotEmpty
                              ? Image.network(
                                  imageUrl,
                                  fit: BoxFit.cover,
                                )
                              : Icon(
                                  Icons.add,
                                  size: 35,
                                ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Color 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: shoeColor2.isNotEmpty
                              ? Image.network(
                                  shoeColor2,
                                  fit: BoxFit.cover,
                                )
                              : GestureDetector(
                                  onTap: () {
                                    pickColor2image();
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 35,
                                  ),
                                ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Color 2',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: shoeColor3.isNotEmpty
                              ? Image.network(
                                  shoeColor3,
                                  fit: BoxFit.cover,
                                )
                              : GestureDetector(
                                  onTap: () {
                                    pickcolor3image();
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 35,
                                  ),
                                ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Color 3',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: shoeColor4.isNotEmpty
                              ? Image.network(
                                  shoeColor4,
                                  fit: BoxFit.cover,
                                )
                              : GestureDetector(
                                  onTap: () {
                                    pickcolor4image();
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 35,
                                  ),
                                ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Color 4',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text('Sizes', style: TextStyle(fontSize: 16)),
                Wrap(
                  children: _sizes.map((size) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FilterChip(
                        label: Text(size),
                        selected: _selectedSizes.contains(size),
                        onSelected: (isSelected) => _toggleSize(size),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    
                    _addShoe();
                  },
                  child: Text('Add Shoe'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickLeadingImage() async {
    final imagePicker = ImagePicker();
    try {
      final XFile? pickedImage =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        _leadingImageUrl = await uploadImage(pickedImage);
        setState(() {
          _leadingImage = pickedImage;
        });
        uploadImage(pickedImage);
      }
    } catch (e) {
      print('Error picking leading image: $e');
    }
  }

  Future<String> uploadImage(XFile image) async {
    try {
      final Reference ref = FirebaseStorage.instance
          .ref()
          .child('leadingImages/${DateTime.now().millisecondsSinceEpoch}.jpg');
      final UploadTask uploadTask = ref.putFile(File(image.path));
      final TaskSnapshot snapshot = await uploadTask;
      final String downloadUrl = await snapshot.ref.getDownloadURL();
      imageUrl = downloadUrl;
      setState(() {
        _colorImages[0] = downloadUrl;
      });
      return downloadUrl;
    } catch (e) {
      print('Error uploading image: $e');
      return '';
    }
  }

//color 2 picking image
  Future<void> pickColor2image() async {
    final imagePicker = ImagePicker();
    try {
      final XFile? pickedImage =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        color2url = await uploadImage(pickedImage);
        setState(() {
          color2 = pickedImage;
        });
        color2upload(pickedImage);
      }
    } catch (e) {
      print('Error picking leading image: $e');
    }
  }

  Future<String> color2upload(XFile image) async {
    try {
      final Reference ref = FirebaseStorage.instance
          .ref()
          .child('leadingImages/${DateTime.now().millisecondsSinceEpoch}.jpg');
      final UploadTask uploadTask = ref.putFile(File(image.path));
      final TaskSnapshot snapshot = await uploadTask;
      final String downloadUrl = await snapshot.ref.getDownloadURL();
      setState(() {
        shoeColor2 = downloadUrl;
      });

      return downloadUrl;
    } catch (e) {
      print('Error uploading image: $e');
      return '';
    }
  }

  Future<void> pickcolor3image() async {
    final imagePicker = ImagePicker();
    try {
      final XFile? pickedImage =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        color3url = await uploadImage(pickedImage);
        setState(() {
          color3 = pickedImage;
        });
        color3upload(pickedImage);
      }
    } catch (e) {
      print('Error picking leading image: $e');
    }
  }

  Future<String> color3upload(XFile image) async {
    try {
      final Reference ref = FirebaseStorage.instance
          .ref()
          .child('leadingImages/${DateTime.now().millisecondsSinceEpoch}.jpg');
      final UploadTask uploadTask = ref.putFile(File(image.path));
      final TaskSnapshot snapshot = await uploadTask;
      final String downloadUrl = await snapshot.ref.getDownloadURL();

      setState(() {
        shoeColor3 = downloadUrl;
      });
      return downloadUrl;
    } catch (e) {
      print('Error uploading image: $e');
      return '';
    }
  }

  Future<void> pickcolor4image() async {
    final imagePicker = ImagePicker();
    try {
      final XFile? pickedImage =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        color4url = await uploadImage(pickedImage);
        setState(() {
          color4 = pickedImage;
        });
        color4image(pickedImage);
      }
    } catch (e) {
      print('Error picking leading image: $e');
    }
  }

  Future<String> color4image(XFile image) async {
    try {
      final Reference ref = FirebaseStorage.instance
          .ref()
          .child('leadingImages/${DateTime.now().millisecondsSinceEpoch}.jpg');
      final UploadTask uploadTask = ref.putFile(File(image.path));
      final TaskSnapshot snapshot = await uploadTask;
      final String downloadUrl = await snapshot.ref.getDownloadURL();

      setState(() {
        shoeColor4 = downloadUrl;
      });
      return downloadUrl;
    } catch (e) {
      print('Error uploading image: $e');
      return '';
    }
  }

  void _toggleSize(String size) {
    setState(() {
      if (_selectedSizes.contains(size)) {
        _selectedSizes.remove(size);
      } else {
        _selectedSizes.add(size);
      }
    });
  }

  void _addShoe() async{
    print("h");
    try {
      // User? user = FirebaseAuth.instance.currentUser;

      // if (user != null) {
      CollectionReference shoes =
          FirebaseFirestore.instance.collection('shoes');
      print('hello');

    await  shoes.add({
        'brand': _selectedBrand,
        'model': _modelNameController.text,
        'price': _priceController.text,
        'description': _descriptionController.text,
        'sizes': _selectedSizes,
        'colors': _colorsController.text,
        'color2': shoeColor2,
        'color3': shoeColor3,
        'color4': shoeColor4,
        'leadingImageUrl': imageUrl,
      });
      print('hi');

      Navigator.pop(context); // Navigate back after a successful addition
      // }
    } catch (e) {
      print('srygfhghg');
      // Handle the error as needed
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to add shoe. Please try again later.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
