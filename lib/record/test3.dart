import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
 
void main() => runApp(My3App());
 
class My3App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           appBar: AppBar(title: Text('아 개열받네')),
            body: Center(
              child: TransfterData()
              )
            )
          );
  }
}
 
class TransfterData extends StatefulWidget {
 
  TransfterDataWidget createState() => TransfterDataWidget();
 
}
 
class TransfterDataWidget extends State {

  final nameController = TextEditingController();
  bool visible = false ;

  set input(String input) {}

  Future webCall() async{
    setState(() {
     visible = true ; 
    });
    
    String name = nameController.text;

    var url = 'https://loger-django.herokuapp.com/my_info/?id='+'name';
    var data = {'name': name,};
    var response = await http.post(url, body: json.encode(data));
    var message = jsonDecode(response.body);
    if(response.statusCode == 200){
      setState(() {
       visible = false; 
      });
    }
 
  
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
 
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
          child: Column(
            children: <Widget>[
 
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('소환사 이름', 
                       style: TextStyle(fontSize: 22))),
 
              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  onChanged: (String str){
                    setState(() => input = str);
                  },
                  controller: nameController,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: '적어봐'),
                )
              ),
 
              // Container(
              // width: 280,
              // padding: EdgeInsets.all(10.0),
              // child: TextField(
              //     controller: emailController,
              //     autocorrect: true,
              //     decoration: InputDecoration(hintText: 'Enter Email Here'),
              //   )
              // ),
 
              // Container(
              // width: 280,
              // padding: EdgeInsets.all(10.0),
              // child: TextField(
              //     controller: phoneNumberController,
              //     autocorrect: true,
              //     decoration: InputDecoration(hintText: 'Enter Phone Number Here'),
              //   )
              // ),
 
              RaisedButton(
                onPressed: webCall,
                color: Colors.pink,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Text('검색하자'),
              ),
 
              Visibility(
                visible: visible, 
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircularProgressIndicator()
                  )
                ),
 
            ],
          ),
        )));
  }
}