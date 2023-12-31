import 'package:flutter/material.dart';

import 'order.dart';

class delivery extends StatefulWidget {
  const delivery({super.key});

  @override
  State<delivery> createState() => _deliveryState();
}

class _deliveryState extends State<delivery> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/map.png'), fit: BoxFit.fill),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 60),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => order(),
                            ));
                      },
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(Icons.arrow_back_ios_new_outlined,
                            color: Color(0xff2f2d2c), size: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, top: 60, left: 280),
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(Icons.my_location_outlined,
                          color: Color(0xff2f2d2c), size: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 145, right: 140),
                    child: Container(
                      height: 5,
                      width: 70,
                      color: Color(0xffeaeaea),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 125, right: 120),
                    child: Text(
                      '10 minutes left',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff303336)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 55, left: 115, right: 186),
                    child: Text(
                      'Delivery to',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff808080)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 55, left: 175, right: 100),
                    child: Text(
                      'Jl. Kpg Sutoyo',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff303336)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 92, left: 30, right: 260),
                    child: Container(
                      height: 5,
                      width: 67.5,
                      color: Color(0xff36c07e),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 92, left: 107.5, right: 182.5),
                    child: Container(
                      height: 5,
                      width: 67.5,
                      color: Color(0xff36c07e),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 92, left: 185, right: 105),
                    child: Container(
                      height: 5,
                      width: 67.5,
                      color: Color(0xff36c07e),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 92, left: 262.5, right: 30),
                    child: Container(
                      height: 5,
                      width: 67.5,
                      color: Color(0xffeaeaea),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 108, right: 30, left: 30),
                    child: Container(
                      height: 70,
                      width: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Color(0xffeaeaea),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/deliver.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 190),
                    child: Container(
                      height: 50,
                      width: 315,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/ordercall.png'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Color(0xffeaeaea),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
