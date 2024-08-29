import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  //flutter pub add url_launcher in terminal to open other page with the help of link app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _hover = false;
  late final _recogniser = TapGestureRecognizer()
    ..onTap = _onTap;

  @override
  void _onTap() {
    launch('https://www.comsats.edu.pk');
  }

  late final _recog = TapGestureRecognizer()
    ..onTap = _onTapper;

  @override
  void _onTapper() {
    launch('http://cuonline.comsats.edu.pk');
  }

  late final _recogni = TapGestureRecognizer()
    ..onTap = _onTappering;

  @override
  void _onTappering() {
    launch('https://admissions.comsats.edu.pk');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Icon(Icons.close, color: Colors.black, size: 30,),
              SizedBox(width: 5,),
              Column(
                children: [
                  Text('CUI Portal-Sahiwal',
                    style: TextStyle(color: Colors.black, fontSize: 15),),
                  Text('swl-cms-comsats.edu.pk',
                    style: TextStyle(color: Colors.black, fontSize: 12),)
                ],
              ),
              SizedBox(width: 70,),
              Icon(Icons.share, color: Colors.black,),
              SizedBox(width: 20,),
              Icon(Icons.save, color: Colors.black,),
              SizedBox(width: 20,),
              Image.asset('assets/images/more.png', scale: 20,)
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Container(
                        color: Colors.purple,
                        height: 150,
                        width: 450,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                          child: Image.asset('assets/images/rightimage.png')),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 280,
                        color: Colors.blueAccent.withOpacity(0.9),
                        child: Column(
                          children: [
                            Image.asset('assets/images/Picture1.png'),
                            Text('COMSATS UNIVERSITY \nISLAMABAD',
                              style: TextStyle(
                                color: Colors.white, fontSize: 19,
                                fontFamily: 'Main',
                              ),),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 31, top: 11),
                                  child: Text('CEMS', style: TextStyle(
                                      color: Colors.white, fontSize: 22,
                                      fontFamily: 'Main')),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 30,),
                                Text(
                                    'COMSATS University Islamabad\n Education Management System',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13)),
                              ],
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 11,),
              Container(
                  child: Text('The University Portal', style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),)
              ),
              SizedBox(height: 20,),
              Container(
                height: 820,
                color: Color(0xFFEEEEEE),
                child: Column(
                  children: [
                    SizedBox(height: 11,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/student2.jpeg',
                                scale: 1.5,),
                              SizedBox(height: 8,),
                              Text('Student/Parent\n      Console',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17
                                ),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 150,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/faculty2.jpeg',
                                scale: 2,),
                              Text('Faculty Console', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                              ),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/fee.jpg', scale: 1.5,),
                              SizedBox(height: 8,),
                              Text('Student Fee', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                              ),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 150,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Hod.jpg', scale: 1.5,),
                              Text('HOD/Coordinator', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                              ),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Academic.jpg',
                                scale: 1.5,),
                              SizedBox(height: 8,),
                              Text('Academic Console', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                              ),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 150,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 12,),
                              Image.asset('assets/images/exam.jpg',
                                scale: 1.5,),
                              Text('Exam Console', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                              ),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(width: 32,),
                        Container(
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/cooedinator.jpg',
                                scale: 1.5,),
                              SizedBox(height: 8,),
                              Text('Coordinator\n  Console', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                              ),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text('CUOnline Introduction', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30),),
                    SizedBox(height: 20,),
                    Text(
                      'CUOnline Principal Seat is responsible to automate all\n'
                          'major COMSATS University processes under one umbrella',

                      style: TextStyle(
                          fontSize: 14
                      ),)
                  ],
                ),
              ),
              Container(
                height: 320,
                //color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        '     as per rules regulations and policies of COMSATS\n'
                            '     University. It provides pure "Web Based"\n'
                            '     anytime/anywhere access to the administrative, \n'
                            '     transactional and academic process needed to manage\n   '
                            '  day to day affairs of COMSATS University along with its 7\n'
                            '     Regular Campuses and Virtual Campus.'
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Explore Websites', style: TextStyle(fontSize: 27,
                            fontWeight: FontWeight.w500),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: SelectableText.rich(
                          TextSpan(
                              children: [
                                TextSpan(
                                    text: 'www.comsats.edu.pk',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      color: _hover ? Colors.purple : Colors
                                          .blue,
                                    ),
                                    mouseCursor: SystemMouseCursors.click,
                                    onEnter: (event) =>
                                        setState(() {
                                          _hover = true;
                                        }),
                                    onExit: (event) =>
                                        setState(() {
                                          _hover = false;
                                        }),
                                    recognizer: _recogniser
                                ),
                              ]
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: SelectableText.rich(
                          TextSpan(
                              children: [
                                TextSpan(
                                    text: 'cuonline.comsats.edu.pk',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      color: _hover ? Colors.purple : Colors
                                          .blue,
                                    ),
                                    mouseCursor: SystemMouseCursors.click,
                                    onEnter: (event) =>
                                        setState(() {
                                          _hover = true;
                                        }),
                                    onExit: (event) =>
                                        setState(() {
                                          _hover = false;
                                        }),
                                    recognizer: _recog
                                ),
                              ]
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: SelectableText.rich(
                          TextSpan(
                              children: [
                                TextSpan(
                                    text: 'admissions.comsats.edu.pk',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      color: _hover ? Colors.purple : Colors
                                          .blue,
                                    ),
                                    mouseCursor: SystemMouseCursors.click,
                                    onEnter: (event) =>
                                        setState(() {
                                          _hover = true;
                                        }),
                                    onExit: (event) =>
                                        setState(() {
                                          _hover = false;
                                        }),
                                    recognizer: _recogni
                                ),
                              ]
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 470,
                width: 400,
                color: Color(0xFFEEEEEE),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/rightimage.png'),
                    SizedBox(height: 10,),
                    Text('Sahiwal Campus', style: TextStyle(
                        fontSize: 27, fontWeight: FontWeight.w500),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          'The COMSATS University Islamabad \n (CUI), which received its Charter from the\n'
                              ' Federal Government in August 2000, as a\n Degree Awarding Institute (DAI) in the \n public sector. The CU is up gradated as\n'
                              ' university by the name of "Comsats \n'
                              'University" through an act of the \nParliament in April 2018.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3, right: 3),
                child: Container(
                  height: 100,
                  width: 400,
                  color: Color(0xff4169e1),
                  child: Center(
                    child: Text(
                      'Copyright @ 2018, All Rights Reserved by CUOnline-COMSATS\n\n'
                          '       Park Road,Tarlai Kalan, Islamabad 45550,Pakistan',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13
                      ),),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
