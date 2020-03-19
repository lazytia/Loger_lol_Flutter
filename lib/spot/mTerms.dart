import 'package:flutter/material.dart';
import '../j_main.dart';


// 약관 페이지 //
class mTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('너 내 동료가 돼어라'),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Center(
        child: RaisedButton(
          child: Text('약관 페이지'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => j_main()),
              );
          }),
      ),
    );
  }
}
// 약관 페이지 //