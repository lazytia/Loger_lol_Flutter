import 'package:flutter/material.dart';

class name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('너 내 동료가 돼어라'),
          backgroundColor: Colors.cyan[600],
        ),
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}

