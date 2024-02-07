import 'package:flutter/material.dart';
import 'package:shoerack/Delete.dart';
import 'package:shoerack/add_shoe.dart';
import 'package:shoerack/listpage.dart';
import 'package:shoerack/login.dart';
import 'package:shoerack/update.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key});

  @override
  State<AdminHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
        actions: [
          // Logout button in the app bar
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) {
                      return login();
                    },
                  ),
                );
              })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Admin page",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to another admin section or page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminSectionPage(),
                ),
              );
            },
            child: Text('Go to Admin Section'),
          ),
        ],
      ),
    );
  }
}

class AdminSectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Section'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Admin Section!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddShoePage()));
                // Handle Add Shoe button press
                // Add your logic here
              },
              child: Text('Add Shoe'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UpdateShoePage()));
                // Handle Update button press
                // Add your logic here
              },
              child: Text('Update'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeleteShoePage()));
                // Handle Delete button press
                // Add your logic here
              },
              child: Text('Delete'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductList()));
                // Handle Delete button press
                // Add your logic here
              },
              child: Text('list'),
            ),
          ],
        ),
      ),
    );
  }
}
