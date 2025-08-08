import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailTextFieldController = TextEditingController();
  var passwordTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: emailTextFieldController,
              decoration: InputDecoration(
                hintText: "Email",
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20),
                hintStyle: const TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              controller: passwordTextFieldController,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                hintStyle: const TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              "Not having account ? Sign Up",
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: MaterialButton(
              onPressed: () {},
              child: Text("Login", style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}
