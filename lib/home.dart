import 'package:flutter/material.dart';
import 'package:stage0/educate2.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stage0/events.dart';
import 'package:stage0/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  'images/map.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color(0xff528265),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("images/car.png"),
                    Image.asset("images/car.png"),
                    // IconButton(onPressed: onPressed, icon: icon)
                  ],
                ),
              )),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff528265),
                        elevation: 0.0,
                      ),
                      icon: Image.asset('images/home.png')),
                  label: ""),
              BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Events()));
                      },
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff528265),
                        elevation: 0.0,
                      ),
                      icon: Image.asset("images/menu.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon:IconButton(
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
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff528265),
                        elevation: 0.0,
                      ),
                      icon: Image.asset("images/setting.png")),
                  label: ""),
            ]));
  }
}
