import 'package:flutter/material.dart';
import 'package:lol_pr_splash/record/my_record.dart';
import 'need_member/needMember.dart';
import 'record/test.dart';
import 'record/test3.dart';
import 'package:flutter/src/widgets/image.dart';



class j_main extends StatelessWidget {
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
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(82.5, 20.0, 40.0, 82.5),
              height: 250,
              width: 250,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage('assets/j_main_back.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              children: <Widget>[
               
                //너 내 동료가 되어라//
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: RaisedButton(
                      elevation: 9,
                      color: Colors.grey[900],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => needMember()),
                        );
                      },
                      padding: EdgeInsets.all(0.0),
                      child: Image.asset('assets/red.png'),
                    ),
                  ),
                  width: 140,
                  height: 140,
                  margin: EdgeInsets.fromLTRB(45.0, 270.0, 40.0, 0.0),
                ),
                //너 내 동료가 되어라//

                //추천 소환사 보기//
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: RaisedButton(
                        elevation: 9,
                        color: Colors.grey[900],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => needMember()),
                          );
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/orange.png')),
                  ),
                  width: 140,
                  height: 140,
                  margin: EdgeInsets.fromLTRB(0.0, 270.0, 20.0, 0.0),
                ),
                //추천 소환사 보기//
              ],
            ),
            Row(
              children: <Widget>[
                //나 너의 동료가 될께//
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: RaisedButton(
                        elevation: 9,
                        color: Colors.grey[900],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => needMember()),
                          );
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/blue.png')),
                  ),
                  width: 140,
                  height: 140,
                  margin: EdgeInsets.fromLTRB(45.0, 440.0, 40.0, 0.0),
                ),
                //나 너의 동료가 될께//

                //기타 버튼 //
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: RaisedButton(
                        elevation: 9,
                        color: Colors.grey[900],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => My1App()),
                          );
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/green.png')),
                  ),
                  width: 140,
                  height: 140,
                  margin: EdgeInsets.fromLTRB(0.0, 440.0, 20.0, 0.0),
                ),
                //기타 버튼 //
              ],
            ),
          ],
        ),
      ),
    );
  }
}
