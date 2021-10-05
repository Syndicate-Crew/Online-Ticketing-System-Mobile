import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_ticketing_system/Views/authentication/signin_screen.dart';
import 'package:online_ticketing_system/Views/authentication/signup_screen.dart';
import 'package:online_ticketing_system/Views/home/home_screen.dart';
import 'package:online_ticketing_system/Views/recharge/recharge_screen.dart';
import 'package:online_ticketing_system/Views/transactions/transactions_history_screen.dart';
import 'package:online_ticketing_system/Views/welcome/welcome_screen.dart';

void main() {
  runApp(const OnlineTicketingSystem());
}

class OnlineTicketingSystem extends StatelessWidget {
  const OnlineTicketingSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      title: 'Online Ticketing System',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => WelcomeScreen()),
        GetPage(name: '/signin', page: () => SignInScreen()),
        GetPage(name: '/signup', page: () => SignUpScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/recharge', page: () => RechargeScreen()),
        GetPage(name: '/transactions', page: () => TransactionsHistoryScreen()),
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.deepPurple.shade50,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple.shade400,
            padding: EdgeInsets.symmetric(
              horizontal: 80,
              vertical: 15,
            ),
          ),
        ),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF6F35A5),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Route ERROR'),
      ),
    );
  }
}
