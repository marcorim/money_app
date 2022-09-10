import 'package:flutter/material.dart';
import 'package:money_app/pages/login/components/bottom_login.dart';
import 'package:money_app/pages/login/components/logo_component.dart';
import 'package:money_app/pages/login/components/label_main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const LogoComponent(),
        const LabelMain(
          label: "Get your Money \n Under Control",
          fontSize: 40,
          colorLabel: Colors.white,
        ),
        const SizedBox(height: 15,),
        const LabelMain(
          label: "Manage your expenses. \nSeamlessy.",
          fontSize: 23,
          colorLabel: Colors.white54,
        ),
        const SizedBox(height: 15,),
        BottomLogin(colors: Colors.deepPurple.shade500, label: 'Sign Up with Email ID'),
        const SizedBox(height: 15,),
        const BottomLogin(colors: Colors.white, label: 'Sign Up with Google'),
      ],
    );
  }
}
