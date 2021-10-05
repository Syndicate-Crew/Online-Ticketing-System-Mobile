import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/signup_top.png",
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.35,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: size.height * 0.05),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/images/signup.svg",
                    height: size.height * 0.4,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1E6FF),
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    child: TextField(
                      cursorColor: Color(0xFF6F35A5),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'Username',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1E6FF),
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    child: TextField(
                      cursorColor: Color(0xFF6F35A5),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'First Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1E6FF),
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    child: TextField(
                      cursorColor: Color(0xFF6F35A5),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'Last Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1E6FF),
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    child: TextField(
                      cursorColor: Color(0xFF6F35A5),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1E6FF),
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    child: TextField(
                      cursorColor: Color(0xFF6F35A5),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.credit_card_rounded,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'NIC',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1E6FF),
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    child: TextField(
                      obscureText: true,
                      cursorColor: Color(0xFF6F35A5),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: ElevatedButton(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed('/signin');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF6F35A5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '',
                        style: TextStyle(color: Color(0xFF6F35A5)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/signin');
                        },
                        child: Text(
                          'Already have an account? Sign In!',
                          style: TextStyle(
                            color: Color(0xFF6F35A5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
