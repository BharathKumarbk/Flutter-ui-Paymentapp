
import 'package:flutter/material.dart';

import 'Login.dart';
import 'home.dart';

void main() => runApp(PaymentApp());

class PaymentApp extends StatefulWidget {
  PaymentApp({Key key}) : super(key: key);

  @override
  _PaymentAppState createState() => _PaymentAppState();
}

class _PaymentAppState extends State<PaymentApp> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => PayLogin(),
        '/home': (context) => PayMain(),
      },
    );
  }
}
