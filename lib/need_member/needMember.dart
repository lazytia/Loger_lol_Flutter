import 'package:flutter/material.dart';
import 'package:lol_pr_splash/j_main.dart';
import 'package:lol_pr_splash/spot/mTerms.dart';
import 'package:lol_pr_splash/need_member/name/name.dart';

// 파티모집 페이지 //
class needMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        title: Text('너 내 동료가 돼어라'),
      ),
      body: Stack(children: <Widget>[
        Container(
          child: Text('너 내 동료가 되어라',
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.white,),
          ),
          margin: EdgeInsets.fromLTRB(82.5, 40.0, 40.0, 82.5),
          height: 250,
          width: 250,
          decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(10.0, 12.0),
              )
            ],
            borderRadius: BorderRadius.circular(11),
            image: DecorationImage(
              image: new AssetImage('assets/red.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),

//제목입력//
        Container(
          padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "제목 입력",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => name()),
                    );
                  },
                  color: Colors.red[500],
                  padding: EdgeInsets.fromLTRB(125, 10, 125, 10),
                ),
              ],
            ),
          ),
        ),
//제목입력//

//랭크입력//
        Container(
          padding: EdgeInsets.fromLTRB(10, 240, 10, 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "랭크 입력",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => j_main()),
                    );
                  },
                  color: Colors.red[500],
                  padding: EdgeInsets.fromLTRB(125, 10, 125, 10),
                ),
              ],
            ),
          ),
        ),
//랭크입력//

//포지션 입력//
        Container(
          padding: EdgeInsets.fromLTRB(10, 380, 10, 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "포지션 입력",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => j_main()),
                    );
                  },
                  color: Colors.red[500],
                  padding: EdgeInsets.fromLTRB(115, 10, 115, 10),
                ),
              ],
            ),
          ),
        ),
//포지션 입력//

//시간설정//
        Container(
          padding: EdgeInsets.fromLTRB(10, 520, 10, 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "시간 설정",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => j_main()),
                    );
                  },
                  color: Colors.red[500],
                  padding: EdgeInsets.fromLTRB(125, 10, 125, 10),
                ),
              ],
            ),
          ),
        ),
//시간설정//

      ]),
    );
  }
}
// 파티모집 페이지 //
