// ignore_for_file: use_key_in_widget_constructors

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shoerack/screens/user_side/login.dart';

class ProfilePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  late String _displayName = '';
  late String _photoURL = '';
  late int _age = 0;
  late String _phoneNumber = '';
  // ignore: unused_field
  List<Map<String, dynamic>> _products = [];

  @override
  void initState() {
    super.initState();
    fetchUserData();
    fetchProducts();
  }

  Future<void> fetchUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();
      if (snapshot.exists) {
        setState(() {
          _displayName = snapshot['name'];
          _age = snapshot['age'];
          _phoneNumber = snapshot['phoneNumber'];
          _nameController.text = _displayName;
          _ageController.text = _age.toString();
          _phoneNumberController.text = _phoneNumber;
        });
      }

      String photoURL = await FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child(user.uid)
          .getDownloadURL();
      setState(() {
        _photoURL = photoURL;
      });
    }
  }

  Future<void> fetchProducts() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('products').get();
    setState(() {
      _products = querySnapshot.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
    });
  }

  Future<void> updateUserProfile() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'name': _nameController.text,
        'age': int.parse(_ageController.text),
        'phoneNumber': _phoneNumberController.text,
      });
      setState(() {
        _displayName = _nameController.text;
        _age = int.parse(_ageController.text);
        _phoneNumber = _phoneNumberController.text;
      });
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        // ignore: unnecessary_const
        content: const Text('Profile updated successfully'),
      ));
    }
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Upload image to Firebase Storage
      Reference ref = FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child(FirebaseAuth.instance.currentUser!.uid);
      UploadTask uploadTask = ref.putFile(File(pickedFile.path));
      TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});

      // Get download URL
      String downloadURL = await taskSnapshot.ref.getDownloadURL();

      setState(() {
        _photoURL = downloadURL;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Sign Out'),
                  content: const Text('Are you sure you want to sign out?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        // ignore: use_build_context_synchronously
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) =>
                                const login(), // Navigate to login screen
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text('Sign Out'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: _photoURL.isNotEmpty
                    ? NetworkImage(_photoURL)
                    : const AssetImage('asset/puma logo.webp')
                        as ImageProvider<Object>,
                child: _photoURL
                        .isEmpty // Show the circular progress indicator if photoURL is empty
                    ? const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      )
                    : null,
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: _pickImage,
                child: const Text('Change Profile Photo'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _ageController,
                decoration: const InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: updateUserProfile,
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
