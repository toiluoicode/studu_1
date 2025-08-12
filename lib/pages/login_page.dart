import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:study_1/pages/sign_up_page.dart';
import 'package:study_1/widgets/login_third_button.dart';
import 'package:study_1/widgets/test.dart';
import 'package:study_1/models/user.dart';
import '../widgets/custom_textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:study_1/services/user_service.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailTextFieldController = TextEditingController();
  var passwordTextFieldController = TextEditingController();
  void _CreateUser () async{
    final user = User(
      username: emailTextFieldController.text,
      password: passwordTextFieldController.text,
    );
    void success = await UserService.createUser(user);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Đã gửi yêu cầu tạo user, vui lòng kiểm tra lại.')),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            textEditingController: emailTextFieldController,
            hintText: "Email",
            lableText: "Email",
          ),
          CustomTextField(
            textEditingController: passwordTextFieldController,
            hintText: "Password",
            lableText: "Password",
            obscureText: true,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
            },
            child: Text(
              "Not having account ? Sign Up",
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)
            ),
            child: MaterialButton(
              onPressed: _CreateUser ,
              child: Text("Login", style: TextStyle(fontSize: 20)),
            ),
          ),
          const SizedBox(height: 20.0),
          const Text("___ Or ___", style: TextStyle(fontSize: 16)),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LoginThirdButton(
                icon: FaIcon(FontAwesomeIcons.google, size: 24, color: Colors.red),
                textThirdButton: "Sign in with Google",
              ),
              LoginThirdButton(
                icon: FaIcon(FontAwesomeIcons.facebook, size: 24, color: Colors.red),
                textThirdButton: "Sign in with Facebook",
              ),
            ],
          )
        ],
      ),
    );
  }
}
