import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/screens/admin/Delete.dart';
import 'package:shoerack/screens/admin/accept_reject.dart';
import 'package:shoerack/screens/admin/add_shoe.dart';
import 'package:shoerack/screens/admin/listpage.dart';
import 'package:shoerack/screens/admin/update.dart';
import 'package:shoerack/screens/user_side/login.dart';

// ignore: use_key_in_widget_constructors
class AdminHomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Admin Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              // Show alert dialog on logout button press
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Logout'),
                    content: const Text('Are you sure you want to logout?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () async {
                          // Perform logout operation
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
                        child: const Text('Logout'),
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
            const DrawerHeader(
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
              title: const Text('ADD_Shoe'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddShoePage()),
                );
              },
            ),
            ListTile(
              title: const Text('List Shoes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductList()),
                );
              },
            ),
            ListTile(
              title: const Text('Product Sales'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AdminNofication()));
              },
            )
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          // ignore: unnecessary_const
          image: const DecorationImage(
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

// ignore: use_key_in_widget_constructors
class AdminSectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Section'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Admin Section!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddShoePage()));
                // Handle Add Shoe button press
                // Add your logic here
              },
              child: const Text('Add Shoe'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UpdateShoePage()));
                // Handle Update button press
                // Add your logic here
              },
              child: const Text('Update'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeleteShoePage()));
                // Handle Delete button press
                // Add your logic here
              },
              child: const Text('Delete'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProductList()));
                // Handle Delete button press
                // Add your logic here
              },
              child: const Text('list'),
            ),
          ],
        ),
      ),
    );
  }
}
