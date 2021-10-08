// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:online_ticketing_system/Models/Passenger.dart';

// var url = 'https://syndicate-ticketing.herokuapp.com/';

// class UserServices {
//   static var client = http.Client();

//   static Future<List<Passenger>> fetchUsers() async {
//     var response = await client.get(Uri.parse('$url/api/passenger'));
//     if (response.statusCode == 200) {
//       var jsonString = response.body;

//       var body =
//           jsonString.map((passenger) => Passenger.fromJson(passenger)).toList();
//       return body;
//     } else {}
//   }
// }
