import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:study_1/models/user.dart';

import '../Models/user.dart';

class UserService {
  static const String urlAddUser = "http://10.0.2.2:8080/users/add";

  static Future<void> createUser( user) async {
    final respone = await http.post(
      Uri.parse(urlAddUser),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "username": user.username,
        "passwrod": user.password
      }),
    );
    if (respone.statusCode == 200 || respone.statusCode == 201) {
      // code 201 is created
      print("succes");
    }
    else{
      print("failed");
    }
  }
}