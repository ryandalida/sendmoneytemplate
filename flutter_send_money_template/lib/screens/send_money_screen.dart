import 'package:flutter/material.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  final TextEditingController _amountController = TextEditingController();

  void _submitAmount() {
    String amount = _amountController.text.trim();

    if (amount.isEmpty || double.tryParse(amount) == null) {
      _showBottomSheet("Error: Invalid amount");
    } else {
      // Simulate API call and success
      double amountToSend = double.parse(amount);
      if (amountToSend > 500) {
        _showBottomSheet("Error: Insufficient funds");
      } else {
        _showBottomSheet("Success: ₱$amountToSend sent successfully!");
      }
    }
  }

  void _showBottomSheet(String message) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Container(
        padding: EdgeInsets.all(16.0),
        child: Text(message, style: TextStyle(fontSize: 18)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Send Money")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: "Enter Amount"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitAmount,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
