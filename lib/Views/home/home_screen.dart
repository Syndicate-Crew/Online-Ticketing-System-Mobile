import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_ticketing_system/Views/home/home_body.dart';
import 'package:online_ticketing_system/Views/payment/payment_screen.dart';
import 'package:online_ticketing_system/Views/profile/profile_screen.dart';
import 'package:online_ticketing_system/Views/request/request_card_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List _screens = [
      HomeBody(),
      PaymentScreen(),
      RequestCardScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bus App'),
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
        width: size.width,
        height: size.height,
        child: Column(
          children: <Widget>[
            // Container(
            //   width: size.width,
            //   child: _appbar[_selectedIndex],
            // ),
            Container(
              height: size.height * 0.8,
              width: size.width,
              child: Center(
                child: _screens[_selectedIndex],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          children: [
            ListTile(
              leading: Icon(
                Icons.arrow_back_ios,
                size: 30.0,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 5.0),
            ListTile(
              title: const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(3);
              },
              trailing: Icon(
                Icons.person,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: const Text(
                'Pay Fee',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(1);
              },
              trailing: Icon(
                Icons.money_off_outlined,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: const Text(
                'Recharge',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Get.toNamed('/recharge');
              },
              trailing: Icon(
                Icons.monetization_on_rounded,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: const Text(
                'Request Card',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
              trailing: Icon(
                Icons.credit_card_rounded,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: const Text(
                'History',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Get.toNamed('/transactions');
              },
              trailing: Icon(
                Icons.history,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 250.0),
            ListTile(
              title: const Text(
                'Sign Out',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Get.toNamed('/');
              },
              trailing: Icon(
                Icons.logout,
                size: 40.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            backgroundColor: Color(0xFF6F35A5),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money_off_outlined,
              size: 30.0,
            ),
            backgroundColor: Color(0xFF6F35A5),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payment_rounded,
              size: 30.0,
            ),
            backgroundColor: Color(0xFF6F35A5),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30.0,
            ),
            backgroundColor: Color(0xFF6F35A5),
            label: "",
          ),
        ],
      ),
    );
  }
}
