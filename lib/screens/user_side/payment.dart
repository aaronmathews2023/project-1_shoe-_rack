import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  final double totalAmount;

  const PaymentPage({Key? key, required this.totalAmount}) : super(key: key);

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
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Payment confirmed.'),
            ));
          }
        },
        steps: [
          Step(
            title: Text('Product Details'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Total Amount: \$${widget.totalAmount.toStringAsFixed(2)}'),
                // Additional details from the cart page can be added here
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
}
