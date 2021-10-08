import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestCardScreen extends StatelessWidget {
  const RequestCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: size.height * 0.05),
                  Text(
                    "Request Card",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
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
                          Icons.add_box_sharp,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'Package',
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
                          Icons.credit_card,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'Credit Card',
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
                          Icons.calendar_today,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'Expire Date',
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
                          Icons.credit_card_sharp,
                          color: Color(0xFF6F35A5),
                        ),
                        hintText: 'CVC',
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
                          'Create Card',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Get.defaultDialog(
                            buttonColor: Color(0xFF6F35A5),
                            confirmTextColor: Colors.white,
                            onConfirm: () => Get.back(),
                            middleText: "Card Created!",
                          );
                          // Get.toNamed('');
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
