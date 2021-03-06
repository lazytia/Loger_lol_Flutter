import 'dart:convert';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lol_pr_splash/j_main.dart';
import 'package:flutter/src/widgets/text.dart';

// class URLS{
  
//   static const String L_URL = "https://loger-django.herokuapp.com/my_info/?id='+'_handleSubmitted'";
// }
final summonerName = TextEditingController();
class User {
      final String summonerName;
      final String summonerLevel;
      final String code;
  //  final String solrank;
  // final String freerank;
  // final String code;

  final Map<String, dynamic> lol;
  User({this.summonerName,  this.summonerLevel, this.code, this.lol});
  factory User.fromJson(Map<String, dynamic> userMap) {
    var user = User(
      summonerName: userMap['summonerName'],
      summonerLevel: userMap['summonerLevel'],
      code: userMap['code'],
      
    );
    return user;
  }
}


Future<User> fetchUser() async {
  
  final response = await http.get('https://loger-django.herokuapp.com/my_info/?id='+'_textController');
    if (response.statusCode == 200) {
      final userMap = json.decode(response.body);
      return User.fromJson(userMap);
    }
    throw Exception('데이터 수신 실패!');
}



class MyRecord extends StatelessWidget {
   
   
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController = new TextEditingController();
    final style = TextStyle(fontSize: 21, height: 2.0);
    void _handleSubmitted(String text){
      _textController.clear(); }
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
          child: Column(
            children: <Widget>[
 
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('적어봐 소환사', 
                       style: TextStyle(fontSize: 22))),
 
              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  
                  autocorrect: true,
                  decoration: InputDecoration(hintText: '소환사 이름'),
                )
              ),
      
    
      //  Container( 
      //    margin: const EdgeInsets.symmetric(
      //      horizontal: 4.0), 
      //      child: IconButton( 
      //        icon: Icon(Icons.send), 
      //        onPressed: () => _handleSubmitted(_textController.text),
      //        ),
      //  ),
           RaisedButton(
                onPressed: () => _handleSubmitted(_textController.text),
            
                color: Colors.pink,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Text('검색'),
              ),


        FutureBuilder(
          future: fetchUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final summonerName = snapshot.data.summonerName;
               final summonerLevel = snapshot.data.summonerLevel;
                final code = snapshot.data.code;
                
                // final solrank = snapshot.data.solrank;
                return Column(
                  children: <Widget>[
                    Center(child: Text(summonerName, style: style)),
                    Center(child: Text(summonerLevel, style: style)),
                    Center(child: Text(code, style: style)),
                    
                  ],
                );
              }else
              if(snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return CircularProgressIndicator();
            },
        ),
       ],
      ),
    )));
   
  }
}
