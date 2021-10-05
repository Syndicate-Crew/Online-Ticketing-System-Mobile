import 'package:flutter/material.dart';

class TransactionsHistoryScreen extends StatelessWidget {
  const TransactionsHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: [
              SizedBox(height: 20),
              Container(
                child: Text(
                  'Transaction History',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Negombo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.1500.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Colombo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.500.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Kandy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.1800.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Galle',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.1900.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Minuwangoda',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.200.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Wennappuwa',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.400.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Wellawatte',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.100.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Malabe',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.600.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF),
                  borderRadius: BorderRadius.circular(29),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6F35A5),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Kaduwela',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Rs.300.0',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.history_outlined,
                    size: 40,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(height: 50.0)
            ],
          ),
        ),
      ),
    );
  }
}
