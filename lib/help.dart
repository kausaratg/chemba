import 'package:flutter/material.dart';
import 'package:stage0/constants/pagetexts.dart';
import 'package:stage0/educate2.dart';

import 'package:stage0/events.dart';
import 'package:stage0/home.dart';
import 'package:stage0/profile.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/logo.png",
                          width: 115,
                          height: 43,
                        ),
                        Text(MypageText.help,
                            style: TextStyle(
                                color: Color(0xff528265),
                                fontSize: 32,
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(MypageText.question),
                    SizedBox(height: 46),
                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffD2D9D1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/chat.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              MypageText.chat,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffD2D9D1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/sendmail.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              MypageText.sendemail,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        MypageText.connect,
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: Image.asset("images/vector1.png"),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 56,
                            ),
                            IconButton(
                              icon: Image.asset("images/vector4.png"),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(width: 51),
                        Column(
                          children: [
                            IconButton(
                              icon: Image.asset("images/vector2.png"),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 56,
                            ),
                            IconButton(
                              icon: Image.asset("images/vector5.png"),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(width: 44),
                        IconButton(
                          icon: Image.asset("images/vector3.png"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]),
            )),
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
