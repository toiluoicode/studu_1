import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LoginThirdButton extends StatelessWidget {
  const LoginThirdButton({super.key, required this.icon, required this.textThirdButton});
  final FaIcon icon;
  final String textThirdButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,

        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 8,),
            Text(textThirdButton,style: TextStyle(
              fontSize: 10
            ),)
          ],
        )
    );
  }
}