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

  String _selectedBrand = 'Nike';
  List<String> _brands = ['Nike', 'Adidas', 'Puma', 'Reebok'];

  List<XFile?> _colorImages = List.generate(4, (index) => null);

  XFile? _leadingImage;
  late String _leadingImageUrl = ''; // New variable for leading image URL

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
                    child: _leadingImage != null
                        ? Image.file(File(_leadingImage!.path))
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
                  children: List.generate(_colorImages.length, (index) {
                    return Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => _pickImage(index),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(8),
                              color: Colors.grey[200],
                              child: _colorImages[index] != null
                                  ? Image.file(File(_colorImages[index]!.path))
                                  : Icon(Icons.add, size: 40),
                            ),
                          ),
                          Text('Color ${index + 1}'),
                        ],
                      ),
                    );
                  }),
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
                  onPressed: _addShoe,
                  child: Text('Add Shoe'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage(int colorIndex) async {
    final imagePicker = ImagePicker();
    try {
      final XFile? pickedImage =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          _colorImages[colorIndex] = pickedImage;
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
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

  void _addShoe() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        CollectionReference shoes =
            FirebaseFirestore.instance.collection('shoes');

        await shoes.add({
          'brand': _selectedBrand,
          'model': _modelNameController.text,
          'price': _priceController.text,
          'description': _descriptionController.text,
          'sizes': _selectedSizes,
          'colors': _colorsController.text,
          'colorImages': _colorImages.map((image) => image?.path).toList(),
          'leadingImageUrl': _leadingImageUrl, // Add leading image URL
        });

        Navigator.pop(context); // Navigate back after a successful addition
      }
    } catch (e) {
      print('Error adding shoe: $e');
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
