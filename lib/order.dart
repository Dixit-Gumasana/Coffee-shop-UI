import 'package:flutter/material.dart';

import 'Detail_item.dart';
import 'delivery.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {

  var count = 1;
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
            "Order",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff2f2d2c)),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => detailitem(),
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
              padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
              child: Stack(
                children: [
                  Container(
                    height: 48,
                    width: 315,
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,top: 4),
                    child: Container(
                      height: 40,
                      width: 153.5,
                      decoration: BoxDecoration(
                        color: Color(0xffc67c4e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Deliver',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),
                          height: 1.1
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13,left: 200,right: 45.75),
                    child: Text('Pick Up',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff2f2d2c)
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 208),
              child: Text('Delivery Address',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff2f2d2c),
              ),),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 239),
              child: Text('Jl. Kpg Sutoyo',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff303336),
              ),),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 107),
              child: Text('Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff808080),
              ),),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 27,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xffDEDEDE))
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        Icon(Icons.edit_note_outlined,
                        size: 21),
                        SizedBox(width: 4),
                        Text('Edit Address',style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff303336)
                        ),),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    height: 27,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xffDEDEDE))
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        Icon(Icons.list_alt,
                            size: 21),
                        SizedBox(width: 4),
                        Text('Add Note',style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff303336)
                        ),),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 30,left: 30),
              child: Container(
                height: 1.3,
                width: 315,
                color: Color(0xffeaeaea),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Stack(
                children: [
                  Container(
                    height: 54,
                    width: 315,),
                  Container(
                    height: 54,
                    width: 54,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                        image: AssetImage('assets/detailpic.png'),
                    fit: BoxFit.cover)
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 65,top: 10 ),
                    child: Text(
                      'Cappucino',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2f2d2c)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65,top: 32),
                    child: Text(
                      'with Chocolate',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9b9b9b)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190,top: 5),
                    child: IconButton(onPressed: () {
                       setState(() {
                         if(count>1){
                           count--;
                         }
                       });

                      }, icon: Icon(Icons.remove_circle_outline),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 260,top: 5),
                    child: IconButton(onPressed: () {
                       setState(() {
                         count++;
                       });
                       }, icon: Icon(Icons.add_box_outlined),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 242,top: 19),
                    child: Text('$count',style: TextStyle(
                      fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 4,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffeaeaea),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                height: 56,
                width: 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color(0xffeaeaea),width: 1.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Icon(Icons.offline_bolt,color: Color(0xffc67c4e),),
                    ),
                    SizedBox(width: 12),
                    Text('1 Discount is applied',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2f2d2c),
                    ),),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Icon(Icons.keyboard_arrow_right_outlined),
                    )
                    
                    
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 193),
              child: Text('Payment Summary',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff2f2d2c),
              ),),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                children: [
                  Text('Price',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2f2d2c),
                  ),),
                  Spacer(),
                  Text('\$ ${4.53*count}',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2f2d2c),
                  ),),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                children: [
                  Text('Delivery Fee',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2f2d2c),
                  ),),
                  Spacer(),
                  Text('\$ 2.0',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2f2d2c),
                    decoration: TextDecoration.lineThrough,
                  ),),
                  SizedBox(width: 8),
                  Text('\$ 1.0',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2f2d2c),
                  ),),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 30,left: 30),
              child: Container(
                height: 1.3,
                width: 315,
                color: Color(0xffeaeaea),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                children: [
                  Text('Total Payment',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2f2d2c),
                  ),),
                  Spacer(),
                  Text('\$ ${(4.53*count)+1}',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2f2d2c),
                  ),),
                ],
              ),
            ),
            SizedBox(height: 16),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/5.88,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xfff9f9f9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 20),
                  child: Container(
                    height: 24,
                    width: 51,
                    decoration: BoxDecoration(
                      color: Color(0xffc67c4e),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text('cash',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.1
                    ),),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90,top: 20),
                  child: Container(
                    height: 24,
                    width: 51,
                    decoration: BoxDecoration(
                        color: Color(0xfff2f2f2),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text('\$ ${(4.53*count)+1}',
                      style: TextStyle(
                          color: Color(0xff2f2d2c),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.1
                      ),),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 30,left: 308),
                  child: Icon(Icons.pending,color: Colors.blueGrey),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 60),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => delivery(),));
                    },
                    child: Container(
                      child: Center(
                        child: Text('Order',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),

                        ),),
                      ),
                      height: 62,
                      width: 315,
                      decoration: BoxDecoration(
                        color: Color(0xffc67c4e),
                        borderRadius: BorderRadius.circular(16),
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
