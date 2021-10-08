import 'dart:convert';

Passenger passengerFromJson(String str) => Passenger.fromJson(json.decode(str));

class Passenger {
  String passengerId;
  String name;
  String email;

  Passenger({
    required this.passengerId,
    required this.name,
    required this.email,
  });
  factory Passenger.fromJson(Map<String, dynamic> json) => Passenger(
        passengerId: json["_id"],
        name: json["name"],
        email: json["email"],
      );
}
