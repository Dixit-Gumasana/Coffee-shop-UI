import 'package:flutter/material.dart';

import 'home.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff000000), Color(0xff000000)],
                      stops: [0.0, 1.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 502, right: 30, left: 30),
              child: Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff000000),
                child: Column(
                  children: [
                    Text(
                      'Coffee so good,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 34,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'your taste buds',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 34,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'will love it.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 34,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 640, left: 30, right: 30),
              child: Container(
                height: MediaQuery.of(context).size.height / 16,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff000000),
                child: Column(
                  children: [
                    Text(
                      'The best grain, the finest roast, the',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffa9a9a9),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'powerful flavor.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffa9a9a9),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 708,right: 30,left: 30 ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/14,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffc67c4e),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffffffff),
                      height: 2.2,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
