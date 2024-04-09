import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class paymentDetails {
  String name;
  double totalAmount;
  String image;
  String id;
  List<String> sizes;

  paymentDetails(
      {required this.id,
      required this.totalAmount,
      required this.image,
      required this.sizes,
      required this.name});
}

class PaymentPage extends StatefulWidget {
  final List<paymentDetails> paymentdatalist;
  String? tt;
  PaymentPage({
    Key? key,
    this.tt,
    required this.paymentdatalist,
    //  required List<Map<String, dynamic>> cartItems
  }) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  // Controllers for text form fields
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  // Checkbox value for cash delivery
  bool _cashDelivery = false;

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep < 2) {
            setState(() {
              _currentStep++;
            });
          } else {
            // Handle continue button tap in the last step
            _submitPaymentDetails();
          }
        },
        steps: [
          Step(
            title: Text('Product Details'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.tt != null
                    ? Text('Total Amount: \$${widget.tt}')
                    : Text(
                        'Total Amount: \$${widget.paymentdatalist[0].totalAmount.toStringAsFixed(2)}'),
              ],
            ),
            isActive: true,
          ),
          Step(
            title: Text('User Details'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _fullNameController,
                  decoration: InputDecoration(labelText: 'Full Name'),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(labelText: 'Phone Number'),
                ),
                TextField(
                  controller: _addressController,
                  decoration: InputDecoration(labelText: 'Address'),
                ),
              ],
            ),
            isActive: true,
          ),
          Step(
            title: Text('Delivery Method'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckboxListTile(
                  title: Text('Cash Delivery'),
                  value: _cashDelivery,
                  onChanged: (value) {
                    setState(() {
                      _cashDelivery = value!;
                    });
                  },
                ),
              ],
            ),
            isActive: true,
          ),
        ],
      ),
    );
  }

  void _submitPaymentDetails() {
    // Store payment details in Firestore
    try {
      for (int i = 0; i < widget.paymentdatalist.length; i++) {
        FirebaseFirestore.instance.collection('payments').add({
          'fullName': _fullNameController.text,
          'email': _emailController.text,
          'phoneNumber': _phoneNumberController.text,
          'address': _addressController.text,
          'totalAmount': widget.paymentdatalist[i].totalAmount,
          'timestamp': FieldValue.serverTimestamp(),
          'productId': widget.paymentdatalist[i].id,
          // 'productBrand': widget.brand,
          'productName': widget.paymentdatalist[i].name,
          'productImage': widget.paymentdatalist[i].image,
          // 'productPrice': widget.paymentdatalist[0].,
          'productSizes': widget.paymentdatalist[i].sizes[0],
        });
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Payment details submitted successfully.'),
      ));
    } catch (e) {}
    // FirebaseFirestore.instance.collection('payments').add({
    //   // 'fullName': _fullNameController.text,
    //   // 'email': _emailController.text,
    //   // 'phoneNumber': _phoneNumberController.text,
    //   // 'address': _addressController.text,
    //   // 'totalAmount': widget.paymentdatalist[0].totalAmount,
    //   // 'timestamp': FieldValue.serverTimestamp(),
    //   // 'productId': widget.paymentdatalist[0].id,
    //   // // 'productBrand': widget.brand,
    //   // 'productName': widget.paymentdatalist[0].name,
    //   // 'productImage': widget.paymentdatalist[0].image,
    //   // // 'productPrice': widget.paymentdatalist[0].,
    //   // 'productSizes': widget.paymentdatalist[0].sizes,
    // }).then((_) {
    //   // Payment details successfully added to Firestore
    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //     content: Text('Payment details submitted successfully.'),
    //   ));
    //   // You can navigate to a success page or do any other action here
    // }).catchError((error) {
    //   // Error occurred while adding payment details
    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //     content: Text('Failed to submit payment details. Please try again.'),
    //   ));
    // });
  }
}
