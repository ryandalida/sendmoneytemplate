import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {"amount": 100, "timestamp": "2025-01-27 13:00", "type": "received"},
    {"amount": 50, "timestamp": "2025-01-27 15:30", "type": "sent"},
  ];// Replace with API call data

  TransactionsScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction History"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          final transaction = transactions[index];
          return ListTile(
            title: Text("₱${transaction['amount']}"),
            subtitle: Text(transaction['timestamp']),
            trailing: Text(transaction['type']),
          );
        },
      ),
    );
  }
}
