
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class UpdateShoePage extends StatefulWidget {
  final String? documentId;

  UpdateShoePage({this.documentId});

  @override
  _UpdateShoePageState createState() => _UpdateShoePageState();
}

class _UpdateShoePageState extends State<UpdateShoePage> {
  final TextEditingController _modelNameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _colorsController = TextEditingController();

  String _selectedBrand = 'Nike';
  List<String> _brands = ['Nike', 'Adidas', 'Puma', 'Reebok'];

  List<XFile?> _colorImages = List.generate(4, (index) => null);

  List<String> _sizes = ['S', 'M', 'L', 'XL'];
  List<String> _selectedSizes = [];

  @override
  void initState() {
    super.initState();
    // Fetch the current shoe details and set the controllers accordingly
    _fetchShoeDetails();
  }

  Future<void> _fetchShoeDetails() async {
    try {
      if (widget.documentId != null) {
        DocumentSnapshot shoeSnapshot = await FirebaseFirestore.instance
            .collection('shoes')
            .doc(widget.documentId)
            .get();

        var shoeData = shoeSnapshot.data() as Map<String, dynamic>;

        setState(() {
          _selectedBrand = shoeData['brand'];
          _modelNameController.text = shoeData['model'];
          _priceController.text = shoeData['price'];
          _descriptionController.text = shoeData['description'];
          _colorsController.text = shoeData['colors'];
          _selectedSizes = List.from(shoeData['sizes']);
          // You may need to load color images here as well if stored differently
        });
      }
    } catch (e) {
      print('Error fetching shoe details: $e');
    }
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

  void _toggleSize(String size) {
    setState(() {
      if (_selectedSizes.contains(size)) {
        _selectedSizes.remove(size);
      } else {
        _selectedSizes.add(size);
      }
    });
  }

  void _updateShoe() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null && widget.documentId != null) {
        CollectionReference shoes =
            FirebaseFirestore.instance.collection('shoes');

        await shoes.doc(widget.documentId).update({
          'brand': _selectedBrand,
          'model': _modelNameController.text,
          'price': _priceController.text,
          'description': _descriptionController.text,
          'sizes': _selectedSizes,
          'colors': _colorsController.text,
          'colorImages': _colorImages.map((image) => image?.path).toList(),
        });

        Navigator.pop(context); // Navigate back after successful update
      }
    } catch (e) {
      print('Error updating shoe: $e');
      // Handle the error as needed
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to update shoe. Please try again later.'),
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update Shoe'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  onPressed: _updateShoe,
                  child: Text('Update Shoe'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
