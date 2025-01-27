import 'package:flutter/material.dart';
import 'package:stage0/constants/pagetexts.dart';
import 'package:stage0/educate.dart';

import 'package:stage0/events.dart';
import 'package:stage0/faq.dart';
import 'package:stage0/home.dart';
import 'package:stage0/profile.dart';

class Educate2 extends StatefulWidget {
  const Educate2({super.key});

  @override
  State<Educate2> createState() => _Educate2State();
}

class _Educate2State extends State<Educate2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Image.asset("images/logo.png")),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 87,
                        height: 42,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Events()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              side: BorderSide(color: Colors.black, width: 1.0),
                              padding: EdgeInsets.all(5),
                            ),
                            child: Text(MypageText.fore,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700))),
                      ),
                      SizedBox(
                        width: 23,
                      ),
                      SizedBox(
                        width: 87,
                        height: 42,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Faq()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              side: BorderSide(color: Colors.black, width: 1.0),
                              padding: EdgeInsets.all(5),
                            ),
                            child: Text(
                              MypageText.faq,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                          width: 87,
                          height: 42,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Educate()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff528265),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                padding: EdgeInsets.all(5),
                              ),
                              child: Text(
                                MypageText.educate,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 59,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 31.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                            labelText: MypageText.location,
                            filled: true,
                            fillColor: Color(0xffD2D9D1),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Add border radius
                              borderSide: BorderSide(
                                color: Color(
                                    0xffD2D9D1), // Border color when enabled
                                width: 2.0,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30),
                            labelStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset('images/arrow.png'),
                            ))),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          MypageText.accra,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          MypageText.temp,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(MypageText.sunny,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 31
                              ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MypageText.forecast,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          SizedBox(
                         
                            child: Container(
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffD2D9D1),
                              ),
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  Stack(alignment: Alignment.center, children: [
                                    Container(
                                        width: 47,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            color: Color(0xff528265),
                                            borderRadius:
                                                BorderRadius.circular(6))),
                                    Image.asset('images/cloud.png')
                                  ]),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          MypageText.date,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                         
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffD2D9D1),
                              ),
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  Stack(alignment: Alignment.center, children: [
                                    Container(
                                        width: 47,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            color: Color(0xff528265),
                                            borderRadius:
                                                BorderRadius.circular(6))),
                                    Image.asset('images/cloud.png')
                                  ]),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          MypageText.date,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                  )
                ]),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xff528265), width: 7),
              // Border color and width
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff528265),
              items: [
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        icon: Image.asset("images/home.png")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Events()));
                        },
                        icon: Image.asset("images/menu.png")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff528265),
                          elevation: 0.0,
                        ),
                        icon: Image.asset('images/leaficon.png')),
                    label: ""),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Educate2()));
                        },
                        icon: Image.asset("images/setting.png")),
                    label: ""),
              ]),
        ));
  }
}
