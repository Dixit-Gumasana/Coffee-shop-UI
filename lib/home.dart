import 'package:flutter/material.dart';

import 'Detail_item.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

   List img = ['assets/501.png','assets/502.png','assets/503.png','assets/504.png'];

   List starRating = ['4.8','4.9','4.5','4.0'];

   List text = ['with Chocolate','with Oat Milk','with Chocolate','with Oat Milk'];

   List price = ['4.53','3.90','4.60','3.50'];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfff9f9f9),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff313131), Color(0xff131313)],
                  stops: [0.15, 1.0],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65, left: 30, right: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 240),
                    child: Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffb7b7b7),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Bilzen, Tanjungbalai',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffdddddd),
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined,
                          color: Color(0xffdddddd), size: 20),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65, left: 290, right: 30),
              child: Container(
                height: 40,
                width: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 30, left: 30),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white60)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white24,
                        )),
                    label: Text(
                      'Search coffee',
                      style: TextStyle(
                          color: Color(0xff989898),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white60,
                    ),
                    suffixIcon: Icon(
                      Icons.tune_outlined,
                      color: Colors.white60,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 206, left: 30, right: 30),
              child: Container(
                height: MediaQuery.of(context).size.height / 5.88,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage('assets/4.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 370, left: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 38,
                      width: 121,
                      decoration: BoxDecoration(
                        color: Color(0xffc67c4e),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Cappuccino',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff),
                              height: 1.1),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 38,
                      width: 121,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Machiato',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2F4B4E),
                              height: 1.1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 38,
                      width: 121,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Latte',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2F4B4E),
                              height: 1.1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 38,
                      width: 121,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Americano',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2F4B4E),
                              height: 1.1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 410, left: 30, right: 30),
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 270,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 240,
                        width: 150,
                        // height: MediaQuery.of(context).size.height/3.33,
                        // width: MediaQuery.of(context).size.width/1.56,
                        color: Color(0xffffffff),
                      ),
                      Container(
                        height: 132,
                        width: 149,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12
                        ),
                        child: Image.asset('${img[index]}',
                        fit: BoxFit.cover),
                      ),
                      Container(
                        height: 25,
                        width: 51,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Color(0xff000000),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, left: 22),
                        child: Text('${starRating[index]}',style: TextStyle(color: Color(0xffffffff))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150, left: 12),
                        child: Text(
                          'Cappucino',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff2f2d2c)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 175, left: 12),
                        child: Text(
                          '${text[index]}',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9b9b9b)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 205, left: 12),
                        child: Text(
                          '\$ ${price[index]}',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff2f4b4e)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200, left: 110),
                        child: InkWell(
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                color: Color(0xffc67c4e),
                                borderRadius: BorderRadius.circular(10)),
                            child:
                                Icon(Icons.add, color: Colors.white, size: 20),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => detailitem(),));
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
