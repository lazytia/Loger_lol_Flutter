import 'package:flutter/material.dart';
import 'package:lol_pr_splash/record/test.dart';
import 'dart:convert';
import 'my_record.dart';
import 'package:http/http.dart' as http;

class My1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           appBar: AppBar(title: Text('제이슨 개똥이다')),
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
  

  final summonerName = TextEditingController();
  
  bool visible = false ;

 
  Future webCall() async{

    setState(() {
     visible = true ; 
    });

    String Name = summonerName.text;
    
    
    var url = 'https://loger-django.herokuapp.com/my_info/?id='+'Name';
    var data = {summonerName: 'summonerName'};
    var response = await http.get('https://loger-django.herokuapp.com/my_info/?id='+'Name');
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
    
    // return Scaffold(
    //     body: SingleChildScrollView(
    //       child: Center(
    //       child: Column(
    //         children: <Widget>[
 
    //           Padding(
    //             padding: const EdgeInsets.all(12.0),
    //             child: Text('적어봐 소환사', 
    //                    style: TextStyle(fontSize: 22))),
 
    //           Container(
    //           width: 280,
    //           padding: EdgeInsets.all(10.0),
    //           child: TextField(
                  
    //               autocorrect: true,
    //               decoration: InputDecoration(hintText: '소환사 이름'),
    //             )
    //           ),

 
              // Container(
              // width: 280,
              // padding: EdgeInsets.all(10.0),
              // child: TextField(
              //     controller: pwController,
              //     autocorrect: true,
              //     decoration: InputDecoration(hintText: 'pw'),
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
                onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyRecord()),
                          );
                        },
                color: Colors.pink,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Text('검색'),
              );
 
              // Visibility(
              //   visible: visible, 
              //   child: Container(
              //     margin: EdgeInsets.only(bottom: 30),
              //     child: CircularProgressIndicator()
              //     )
              //   ),
 
        //     ],
        //   ),
        // )));
  }
}