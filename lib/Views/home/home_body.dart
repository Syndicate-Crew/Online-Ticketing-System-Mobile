import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                  color: Colors.purple.shade400,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              width: double.infinity,
              height: size.height * 0.2,
              child: InkWell(
                onTap: () {},
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      right: 5,
                      bottom: 1,
                      child: Image.asset(
                        'assets/images/coins.png',
                        scale: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Credit Balance',
                            style: TextStyle(
                              // fontFamily: SANSATION_REGULAR,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6F35A5),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                            child: Text(
                              'Rs.5000.00',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF6F35A5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.purple.shade400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        width: double.infinity,
                        height: size.height * 0.2,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 20,
                              top: -10,
                              child: Image.asset(
                                'assets/images/pay_credit.png',
                                scale: 16,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 35,
                              child: Text(
                                'Pay Fee',
                                style: TextStyle(
                                  // fontFamily: SANSATION_REGULAR,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF6F35A5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.purple.shade400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        width: double.infinity,
                        height: size.height * 0.2,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 20,
                              top: -10,
                              child: Image.asset(
                                'assets/images/piggy_bank.png',
                                scale: 16,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 28,
                              child: Text(
                                'Recharge',
                                style: TextStyle(
                                  // fontFamily: SANSATION_REGULAR,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF6F35A5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.purple.shade400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        width: double.infinity,
                        height: size.height * 0.2,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 20,
                              top: -10,
                              child: Image.asset(
                                'assets/images/credit_card.png',
                                scale: 16,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Text(
                                'Request Card',
                                style: TextStyle(
                                  // fontFamily: SANSATION_REGULAR,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF6F35A5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.purple.shade400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        width: double.infinity,
                        height: size.height * 0.2,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 15,
                              top: -10,
                              child: Image.asset(
                                'assets/images/history.png',
                                scale: 15,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 15,
                              child: Text(
                                'Transactions',
                                style: TextStyle(
                                  // fontFamily: SANSATION_REGULAR,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF6F35A5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
