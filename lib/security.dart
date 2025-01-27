import 'package:flutter/material.dart';
import 'package:stage0/constants/pagetexts.dart';
import 'package:stage0/educate2.dart';

import 'package:stage0/events.dart';
import 'package:stage0/home.dart';
import 'package:stage0/profile.dart';

class Security extends StatelessWidget {
  const Security({super.key});

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
                        Text(MypageText.security,
                            style: TextStyle(
                                color: Color(0xff528265),
                                fontSize: 26,
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                    SizedBox(height: 73),
                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffD2D9D1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/useralt.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              MypageText.privacy,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
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
                          Image.asset('images/terms.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              MypageText.terms,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
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
                          Image.asset('images/devices.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              MypageText.device,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
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
