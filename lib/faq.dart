import 'package:flutter/material.dart';
import 'package:stage0/constants/pagetexts.dart';

import 'package:stage0/educate.dart';
import 'package:stage0/educate2.dart';
import 'package:stage0/events.dart';
import 'package:stage0/home.dart';
import 'package:stage0/profile.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Image.asset("images/logo.png")),
                SizedBox(height: 28.44),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          child: Text(MypageText.event,
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Faq()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff528265),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                            padding: EdgeInsets.all(5),
                          ),
                          child: Text(
                            MypageText.faq,
                            style: TextStyle(
                                color: Colors.white,
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
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              side: BorderSide(color: Colors.black, width: 1.0),
                              padding: EdgeInsets.all(5),
                            ),
                            child: Text(
                              MypageText.educate,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ))),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Expanded(
                    child: ListView.separated(
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          // padding: EdgeInsets.all(4),
                          margin: EdgeInsets.symmetric(horizontal: 31.0, vertical: 4.0),
                          decoration: BoxDecoration(
                            color: Color(0xffD2D9D1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            title: Text(
                              MypageText.chemba,
                              style: TextStyle(fontSize: 14),
                            ),
                            trailing: Image.asset('images/arrowdown.png'),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 15); // Adds space between items
                      },
                    )),
              ]),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                  color: Color(0xff528265), width: 7), 
                  // Border color and width
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Events()));
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
