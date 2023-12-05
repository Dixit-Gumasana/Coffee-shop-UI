import 'package:flutter/material.dart';

import 'home.dart';
import 'order.dart';

class detailitem extends StatefulWidget {
  const detailitem({super.key});

  @override
  State<detailitem> createState() => _detailitemState();
}

class _detailitemState extends State<detailitem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 0.4,
          centerTitle: true,
          title: Text(
            "Detail",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff2f2d2c)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Color(0xff2f2d2c),
              ),
            )
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => home(),
                    ));
              },
              child: Icon(Icons.arrow_back_ios_new_outlined,
                  color: Color(0xff2f2d2c), size: 18),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.58,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage('assets/detailpic.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 210, left: 30),
              child: Container(
                height: 48,
                width: 114,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cappucino',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2f2d2c)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'with Chocolate',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9b9b9b)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffffc300),
                  ),
                  Text('4.8',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2f2d2c))),
                  SizedBox(width: 3),
                  Text('(230)',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff808080),
                      )),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/detailicon.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/detailicon2.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Container(
                height: 1.5,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffeaeaea),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 247),
              child: Text('Description',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2f2d2c),
                  )),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9b9b9b),
                      ),
                    ),
                    TextSpan(
                      text: 'Read More',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffc67c4e),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 299),
              child: Text('Size',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff2f2d2c)
              ),),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 43,
                      width: 96,
                    decoration: BoxDecoration(
                      color: Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text('S',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                        color: Color(0xff2f2d2c)
                      )),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    height: 43,
                    width: 96,
                    decoration: BoxDecoration(
                        color: Color(0xfffff5ee),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text('M',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                              color: Color(0xffc67c4e)
                          )),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    height: 43,
                    width: 96,
                    decoration: BoxDecoration(
                        color: Color(0xfff9f9f9),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text('L',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                              color: Color(0xff2f2d2c)
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/6.66,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xfff9f9f9),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 25),
                  child: Text('Price',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9b9b9b),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 50),
                  child: Text('\$ 4.53',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffc67c4e),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 30,left: 120),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => order(),
                          ));
                    },
                    child: Container(
                      height: 60,
                      width: 215,
                      decoration: BoxDecoration(
                        color: Color(0xffc67c4e),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(
                        child: Text('Buy Now',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),
                          height: 1.0
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
