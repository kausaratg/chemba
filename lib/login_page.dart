import 'package:flutter/material.dart';

import 'package:stage0/constants/pagetexts.dart';
import 'package:stage0/register_page.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "images/logo.png",
                ),
              ),
              SizedBox(
                height: 59.44,
              ),
              TextField(textlabel: MypageText.email, width: 20, height: 20),
              SizedBox(
                height: 25,
              ),
              TextField(textlabel: MypageText.password, width: 20, height: 20),
              SizedBox(
                height: 14,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  MypageText.forgot,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                width: 298,
                height: 63,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    style: ElevatedButton.styleFrom(
                    
                        backgroundColor: Color(0xff528265),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),side: BorderSide(color: Color(0xff000000),width:1) )),
                    child: Text(MypageText.signup,
                        style: TextStyle(
                          color: Colors.white,
                        ))),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    MypageText.accountlogin,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: Text(MypageText.register,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {
  const TextField(
      {super.key,
      required this.textlabel,
      required this.width,
      required this.height});
  final String textlabel;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: textlabel,
          filled: true,
          fillColor: Color(0xffD2D9D1),
          border: OutlineInputBorder(),
          contentPadding:
              EdgeInsets.symmetric(vertical: height, horizontal: width),
          labelStyle:
              TextStyle(fontWeight: FontWeight.w800, color: Colors.black)),
    );
  }
}
