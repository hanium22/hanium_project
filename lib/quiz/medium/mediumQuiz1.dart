import 'package:flutter/material.dart';
import 'package:history_gamification/gamePage/storyMap2.dart';
import 'package:history_gamification/quiz/medium/mediumQuiz2.dart';
import 'package:history_gamification/quiz/timer.dart';
import 'package:history_gamification/quizPage.dart';

class mediumQuiz1 extends StatefulWidget {
  @override
  State<mediumQuiz1> createState() => _mediumQuiz1();
}

class _mediumQuiz1 extends State<mediumQuiz1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images1/storymap_background1.png'), // 배경 이미지
          ),
        ),
        child: SafeArea(
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
              children: <Widget>[
                Container(
                    color:Color(0xffCCCCFF),
                    padding: const EdgeInsets.all(10.0),
                    height: 340.0,
                    width: 800,
                    alignment: const Alignment(0.9,0),
                    child: ListView(
                      children: <Widget>[
                        SizedBox( height:10.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          height: 30,
                          child: Row( //Quiz,타이머
                            children: [
                              Container(//퀴즈 화면으로 돌아가는 버튼
                                  height: 30.0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Color(0xff9999FF),),
                                    child: const Text('Quiz'),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (context) => quizPage()));
                                    },
                                  )
                              ),
                              SizedBox(width:20.0),
                              Container( //타이머
                                height: 30,
                                child: Container(
                                  width: 470.0,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Container( // 시계
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/quiz/clock.png'),
                                          ),
                                        ),
                                      ),
                                      timer()

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height:15.0),

                        Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.navigate_before,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                onPressed: () {
                                  print('next story');
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => storyMap2()));
                                },
                              ),
                              SizedBox(width:12.0),
                              Container( //문제
                                padding: const EdgeInsets.all(5.0),
                                alignment: const Alignment(1.1,0),
                                color: Colors.white,
                                height: 230,
                                width: 520,
                                child: ListView(
                                  children: <Widget>[
                                    Text('Q. 행주대첩 당시 일본군은 몇 군에 걸쳐 처들어왔는가?',
                                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),
                                    ),
                                    SizedBox(height:7.0),
                                    Row(
                                      children: [
                                        SizedBox(width:30.0),

                                        Column(
                                          children: [
                                            Text('<보기>', style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold ),),

                                            SizedBox(height:8.0),
                                            Row(
                                              children: <Widget>[
                                                SizedBox(width:10.0),
                                                Column( //보기1,보기4
                                                  children: [
                                                    Container(
                                                      //보기1
                                                      width: 140.0,
                                                      height: 65.0,
                                                      decoration: BoxDecoration(//모서리를 둥글게
                                                        border: Border.all(color: Colors.black26, width: 3),
                                                        color: Color(0xffF5F5F5),
                                                      ),
                                                      child: Center(
                                                        child: Text('1. 3군',style: TextStyle(fontWeight: FontWeight.bold),),
                                                      )
                                                    ),
                                                    SizedBox(height:12.0),
                                                    Container(//보기4
                                                      width: 140.0,
                                                      height: 65.0,
                                                      decoration: BoxDecoration(//모서리를 둥글게
                                                        border: Border.all(color: Colors.black26, width: 3),
                                                        color: Color(0xffF5F5F5),
                                                      ),
                                                      child: Center(
                                                        child:Text('4. 6군', style: TextStyle(fontWeight: FontWeight.bold),),
                                                      )
                                                    )
                                                  ],
                                                ),
                                                SizedBox(width:15.0),
                                                Column( //보기2,보기5
                                                  children: [
                                                    Container(//보기2
                                                      width: 140.0,
                                                      height: 65.0,
                                                      decoration: BoxDecoration(//모서리를 둥글게
                                                        border: Border.all(color: Colors.black26, width: 3),
                                                        color: Color(0xffF5F5F5),
                                                      ),
                                                      child: Center(
                                                        child: Text('2. 4군', style: TextStyle(fontWeight: FontWeight.bold),),
                                                      )
                                                    ),
                                                    SizedBox(height:12.0),
                                                    Container(//보기5
                                                      width: 140.0,
                                                      height: 65.0,
                                                      decoration: BoxDecoration(//모서리를 둥글게
                                                        border: Border.all(color: Colors.black26, width: 3),
                                                        color: Color(0xffF5F5F5),
                                                      ),
                                                      child: Center(
                                                        child: Text('5. 7군', style: TextStyle(fontWeight: FontWeight.bold),),
                                                      )
                                                    ),
                                                  ],
                                                ),

                                                SizedBox(width:15.0),

                                                Column(
                                                  children: [
                                                    Container(//보기3
                                                        width: 140.0,
                                                        height: 65.0,
                                                        decoration: BoxDecoration(//모서리를 둥글게
                                                          border: Border.all(color: Colors.black26, width: 3),
                                                          color: Color(0xffF5F5F5),
                                                        ),
                                                        child: Center(
                                                          child: Text('3. 5군', style: TextStyle(fontWeight: FontWeight.bold),),
                                                        )
                                                    )
                                                  ],
                                                )

                                              ],
                                            ),
                                          ],// 보기

                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height:10.0),
                              IconButton(
                                icon: Icon(
                                  Icons.navigate_next,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                onPressed: () {
                                  print('next story');
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => mediumQuiz2()));
                                },
                              ),

                            ]
                        ),

                        Row(
                          children: [
                            SizedBox(width:80.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('1', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                            SizedBox(width:30.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('2', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                            SizedBox(width:30.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('3', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                            SizedBox(width:30.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('4', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                            SizedBox(width:30.0),
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 10),padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => quizPage()));
                                  },
                                  child: const Text('5', style: TextStyle(fontSize: 18.0,color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),



              ]
          ),

        ),
      ),
    );
  }
}