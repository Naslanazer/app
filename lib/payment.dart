import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String paymentMethod = '';  // Holds selected payment method (debit or credit)
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  // Toggle method to show debit or credit card fields
  void togglePaymentFields(String method) {
    setState(() {
      paymentMethod = method;
    });
  }

  // A simple function for 'Pay' button action (this can be expanded with payment logic)
  void processPayment() {
    if (paymentMethod == 'debit' || paymentMethod == 'credit') {
      // You can replace this with actual payment processing logic
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Payment Successful'),
          content: Text('Payment has been processed successfully!'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue[50],  // Set background color of the screen
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dropdown to select payment method
              Text(
                'Select Payment Method:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                value: paymentMethod.isEmpty ? null : paymentMethod,
                hint: Text('Select Method'),
                items: [
                  DropdownMenuItem(value: 'debit', child: Text('Debit Card')),
                  DropdownMenuItem(value: 'credit', child: Text('Credit Card')),
                ],
                onChanged: (value) {
                  if (value != null) {
                    togglePaymentFields(value);
                  }
                },
              ),
              SizedBox(height: 20),

              // Debit Card Fields
              if (paymentMethod == 'debit') ...[
                TextField(
                  controller: cardNumberController,
                  decoration: InputDecoration(
                    labelText: 'Debit Card Number',
                    hintText: 'Enter Debit Card Number',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: amountController,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    hintText: 'Enter Amount',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: processPayment,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber, // Background color
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Pay with Debit'),
                ),
              ],

              // Credit Card Fields
              if (paymentMethod == 'credit') ...[
                TextField(
                  controller: cardNumberController,
                  decoration: InputDecoration(
                    labelText: 'Credit Card Number',
                    hintText: 'Enter Credit Card Number',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: amountController,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    hintText: 'Enter Amount',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: processPayment,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber, // Background color
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Pay with Credit'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
