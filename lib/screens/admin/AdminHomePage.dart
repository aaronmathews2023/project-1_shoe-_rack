import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/screens/admin/Delete.dart';
import 'package:shoerack/screens/admin/add_shoe.dart';
import 'package:shoerack/screens/admin/listpage.dart';
import 'package:shoerack/screens/admin/update.dart';
import 'package:shoerack/screens/user_side/login.dart';

class AdminHomePage extends StatefulWidget {
  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Admin Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              // Show alert dialog on logout button press
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Logout'),
                    content: Text('Are you sure you want to logout?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () async {
                          // Perform logout operation
                          await FirebaseAuth.instance.signOut();
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) =>
                                  login(), // Navigate to login screen
                            ),
                            (route) => false,
                          );
                        },
                        child: Text('Logout'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "asset/grey-and-pastel-cartoon-nike-shoes-tgmuylc9aiw4z43t.jpg",
                  ),
                ),
              ),
              child: Text(
                'Shoe Rack',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('ADD_Shoe'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddShoePage()),
                );
              },
            ),
            ListTile(
              title: Text('List Shoes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductList()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.5, // Adjust opacity as needed
            fit: BoxFit.cover,
            image: AssetImage(
              "asset/red-aesthetic-cartoon-shoe-e7sjufdjyt1a6by5.jpg",
            ),
          ),
        ),
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
