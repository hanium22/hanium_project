import 'package:flutter/material.dart';
import 'package:history_gamification/LoginPage.dart';
import 'package:history_gamification/gamePage/storyMap.dart';
import 'package:history_gamification/main.dart';
import 'package:history_gamification/quizPage.dart';
import 'package:history_gamification/rankingPage.dart';
import 'package:history_gamification/settingPage.dart';

class mainPage extends StatefulWidget {
  @override
  State< mainPage> createState() => _mainPage();
}

class _mainPage extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images1/background.jpg'), // 배경 이미지
            ),
          ),

          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 10),
              children: <Widget>[
                Text('HOME', style: TextStyle(color:Colors.white,fontSize: 45.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 2.0),
                Center(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 230,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox( height: 15,),
                                      Text(
                                        'Profile',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize:25, color:Colors.white, fontWeight: FontWeight.bold),
                                      )
                                    ]
                                  ),
                                ), //Container
                                SizedBox( width: 10,),

                                Container(
                                    width: 320,
                                    height: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                  child: Column(
                                      children: <Widget>[
                                        SizedBox( height: 15,),
                                        Text(
                                          'Story',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize:25, color:Colors.white,fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox( height: 20,),
                                        Row(
                                          children: <Widget>[
                                            SizedBox( width: 70,),
                                            IconButton(
                                              icon: Icon(
                                                Icons.navigate_before,
                                                color: Colors.white,
                                                size: 30.0,
                                              ),
                                              onPressed: () {
                                                print('next story');
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
                                              },
                                            ),
                                            SizedBox( width: 20,),
                                              Container(
                                                height: 60.0,
                                                width: 60.0,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/images1/star.png'),
                                                  ),
                                                ),
                                              ),
                                            SizedBox( width: 20,),
                                            IconButton(
                                              icon: Icon(
                                                Icons.navigate_next,
                                                color: Colors.white,
                                                size: 30.0,
                                              ),
                                              onPressed: () {
                                                print('next story');
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
                                              },
                                            ),
                                          ],
                                        )
                                    ]
                                  ),//BoxDecoration
                                ), //Container
                              ], //<Widget>[]
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                            Container(
                              height: 10.0,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 115,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Colors.black26,
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(builder: (context) => rankingPage()));
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox( height: 5.0),
                                            Ink.image(
                                              image: AssetImage('assets/mainPage/rank.png'),
                                              width: 60, height: 60,),
                                            SizedBox(height: 2.0),
                                            Text('Rank', style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),
                                    )
                                ),
                                SizedBox(  width: 10,),
                                Container(
                                  width: 115,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Colors.black26,
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(builder: (context) => quizPage()));
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox( height: 5.0),
                                            Ink.image(
                                              image: AssetImage('assets/mainPage/quiz.png'),
                                              width: 60, height: 60,),
                                            SizedBox(height: 2.0),
                                            Text('Quiz', style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),
                                    )
                                ),
                                SizedBox(  width: 10,), //SizedBox
                                Container(
                                    width: 100,
                                    height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Colors.black26,
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(builder: (context) => settingPage()));
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Ink.image(
                                              image: AssetImage('assets/mainPage/setting_Button.png'),
                                              width: 100, height: 100,),
                                          ],
                                        ),
                                      ),
                                    )
                                ),
                                SizedBox(  width: 10,),
                                Container(
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images1/dark.png'),
                                    ),
                                  ),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                        textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                      ),
                                      onPressed: (){
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(builder: (context) => storyMap()));
                                      },
                                      child: const Text('Game Start', style: TextStyle(fontSize: 25.0,color: Colors.white, fontWeight: FontWeight.bold),
                                      )
                                  ),//BoxedDecoration
                                )//Container
                              ], //<Widget>[]
                              mainAxisAlignment: MainAxisAlignment.center,
                            ), //Row
                          ], //<widget>[]
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ), //Column
                      ) //Padding
                  ), //Container
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => FirstPage()));
        },
        child: const Icon(Icons.arrow_circle_right),
       ),
    );
  }
}