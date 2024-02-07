import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DeleteShoePage extends StatefulWidget {
  final String? documentId;

  DeleteShoePage({this.documentId});

  @override
  _DeleteShoePageState createState() => _DeleteShoePageState();
}

class _DeleteShoePageState extends State<DeleteShoePage> {
  void _deleteShoe() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null && widget.documentId != null) {
        CollectionReference shoes =
            FirebaseFirestore.instance.collection('shoes');

        await shoes.doc(widget.documentId).delete();

        Navigator.pop(context); // Navigate back after successful deletion
      }
    } catch (e) {
      print('Error deleting shoe: $e');
      // Handle the error as needed
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to delete shoe. Please try again later.'),
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
          title: Text('Delete Shoe'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Are you sure you want to delete this shoe?',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _deleteShoe,
                child: Text('Delete Shoe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}