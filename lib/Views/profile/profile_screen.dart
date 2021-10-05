import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                backgroundColor: Colors.purple.shade400,
                radius: 65,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 60,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            ListTile(
              leading: Icon(
                Icons.circle_rounded,
                color: Colors.purple.shade400,
              ),
              title: Text(
                'Nuwatha MB',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.circle_rounded,
                color: Colors.purple.shade400,
              ),
              title: Text(
                'Maduka',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.circle_rounded,
                color: Colors.purple.shade400,
              ),
              title: Text(
                'Nuwantha',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.circle_rounded,
                color: Colors.purple.shade400,
              ),
              title: Text(
                '990733880V',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.1),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: ElevatedButton(
                  child: Text(
                    'Edit Profile',
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
                      middleText: "Recharge Successful!",
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF6F35A5),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
