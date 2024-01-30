import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/AdminHomePage.dart';
import 'package:shoerack/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:shoerack/home.dart';
import 'package:shoerack/register.dart';

class login extends StatefulWidget {
  const login({Key? key});

  @override
  State<login> createState() => _LoginState();
}

class _LoginState extends State<login> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello Again!",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Text(
                  "Welcome Back! You've been Missed!",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * .018,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Email Address"),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Password"),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                Container(
                  height: MediaQuery.of(context).size.height * .05,
                  width: MediaQuery.of(context).size.height * .39,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Check if the entered email and password are for the admin
                        if (emailController.text == 'aaron1' &&
                            passwordController.text == 'aaron@123') {
                          adminLogin();
                        } else {
                          userLogin();
                        }
                      }
                    },
                    child: Text("Login"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) {
                        return RegisterPage();
                      }),
                    );
                  },
                  child: Text(
                    "Sign up now",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void userLogin() async {
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is Successfully SignedIn");
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      print("Some error happened");
    }
  }

  void adminLogin() {
    // Implement your logic for admin login here
    print("Admin is Successfully SignedIn");
    // Replace the following line with the navigation to the admin home page
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => AdminHomePage()),
    );
  }
}
