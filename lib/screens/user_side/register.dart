// ignore_for_file: use_build_context_synchronously, unused_local_variable, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:shoerack/screens/user_side/login.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // ignore: unused_field
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>(); // Added GlobalKey

  // Validators for email, name, and password
  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter your email address';
    }
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,

          // Added Form widget and key
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create Account",
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
                    const Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        "Let's Create Account Together",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    const Text(
                      "Your Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    TextFormField(
                      controller: nameController,
                      validator: (value) => validateName(value!),
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    const Text(
                      "Email Address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => validateEmail(value!),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    const Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: (value) => validatePassword(value!),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        // Check if the form is valid before proceeding
                        if (_formKey.currentState!.validate()) {
                          RegisterUser();
                        }
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: const Text('Sign In'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already Have An Account ?  "),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) {
                                return const login();
                              }),
                            );
                          },
                          child: const Text("Sign In"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void RegisterUser() async {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      
      // Navigate to the home screen or the appropriate screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return const login();
        }),
      );
    } on FirebaseAuthException catch (e) {
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message.toString())),
      );
    }
  }
}
