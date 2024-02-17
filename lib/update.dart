import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
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
  String imageUrl = '';
  String shoeColor2 = '';
  String shoeColor3 = '';
  String shoeColor4 = '';

  XFile? _leadingImage;
  XFile? color2;
  XFile? color3;
  XFile? color4;

  late String _leadingImageUrl = '';
  late String color2url = '';
  late String color3url = '';
  late String color4url = '';

  String _selectedBrand = 'Nike';
  List<String> _brands = ['Nike', 'Adidas', 'Puma', 'Reebok'];

  List<XFile?> _colorImages = List.generate(4, (index) => null);

  List<String> _sizes = ['S', 'M', 'L', 'XL'];
  List<String> _selectedSizes = [];

  @override
  void initState() {
    super.initState();
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
          imageUrl = shoeData['leadingImageUrl'];
          shoeColor2 = shoeData['color2'];
          shoeColor3 = shoeData['color3'];
          shoeColor4 = shoeData['color4'];
          _modelNameController.text = shoeData['model'];
          _priceController.text = shoeData['price'];
          _descriptionController.text = shoeData['description'];
          _colorsController.text = shoeData['colors'];
          _selectedSizes = List.from(shoeData['sizes']);
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
      print('Error picking color image: $e');
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

  Future<void> _updateShoe() async {
    try {
      await FirebaseFirestore.instance
          .collection('shoes')
          .doc(widget.documentId)
          .update({
        'brand': _selectedBrand,
        'model': _modelNameController.text,
        'price': _priceController.text,
        'description': _descriptionController.text,
        'colors': _colorsController.text,
        'sizes': _selectedSizes,
        'color2': shoeColor2,
        'color3': shoeColor3,
        'color4': shoeColor4,
        'leadingImageUrl': imageUrl,
      });

      print('Shoe updated!');
    } catch (e) {
      print('Error updating shoe: $e');
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: imageUrl.isNotEmpty
                              ? GestureDetector(
                                  onTap: () {
                                    _pickLeadingImage();
                                  },
                                  child: Image.network(
                                    imageUrl,
                                    fit: BoxFit.cover,
                                  ),
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
                              ? GestureDetector(
                                  onTap: () {
                                    pickColor2image();
                                  },
                                  child: Image.network(
                                    shoeColor2,
                                    fit: BoxFit.cover,
                                  ),
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
                              ? GestureDetector(
                                  onTap: () {
                                    pickcolor3image();
                                  },
                                  child: Image.network(
                                    shoeColor3,
                                    fit: BoxFit.cover,
                                  ),
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
                              ? GestureDetector(
                                  onTap: () {
                                    pickcolor4image();
                                  },
                                  child: Image.network(
                                    shoeColor4,
                                    fit: BoxFit.cover,
                                  ),
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

      setState(() {
        imageUrl = downloadUrl;
      });
      return downloadUrl;
    } catch (e) {
      print('Error uploading image: $e');
      return '';
    }
  }

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
}
