import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/wallet_balance_screen.dart';
import 'screens/send_money_screen.dart';
import 'screens/transaction_history_screen.dart';

void main() {
  runApp(SendMoneyApp());
}

class SendMoneyApp extends StatelessWidget {
  const SendMoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Send Money App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/wallet': (context) => WalletScreen(),
        '/send_money': (context) => SendMoneyScreen(),
        '/transactions': (context) => TransactionsScreen(),
      },
    );
  }
}
