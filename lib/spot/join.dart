import 'package:flutter/material.dart';
import 'mTerms.dart';

// 회원가입 페이지 //
class join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('너 내 동료가 돼어라',
          style: TextStyle(color: Colors.black),
          ),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Center(
      
        child: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mTerms()),
              );
          },
          label: Text("회원가입"
            ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow[900],  
          icon: Icon(Icons.arrow_forward_ios, 
            color: Colors.black
            ),
        ),
      ),
      );
  }
} 
// 회원가입 페이지 //