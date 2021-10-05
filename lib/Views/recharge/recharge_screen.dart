import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class RechargeScreen extends StatelessWidget {
  const RechargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String charaterSet =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MTUzNzRlYzRkY';
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Syndicate'),
            Icon(Icons.travel_explore),
          ],
        ),
        actions: [
          PopupMenuButton(
            offset: Offset(-5, 50),
            onSelected: (value) {
              if (value == 'logout') {
                print(value);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.exit_to_app_rounded,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text('Logout'),
                    ),
                  ],
                ),
                value: 'logout',
              )
            ],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
                radius: 20,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                child: Text(
                  'Recharge Card',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Scan the below QR code to recharge',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: SfBarcodeGenerator(
                  value: charaterSet,
                  symbology: QRCode(),
                  showValue: false,
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
                    hintText: "Amount",
                    icon: Icon(
                      Icons.monetization_on,
                      color: Color(0xFF6F35A5),
                    ),
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
                      'Recharge',
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
      ),
    );
  }
}
