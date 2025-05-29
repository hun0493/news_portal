import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

 TextField_textField({
  required TExtEditingController controller,
  required STring hintText,
  bool obscure = false,
 }) {
  return TextField(
    controller: controller,
    obscureTExt : obscure,
    decoratoin: 
  )
 }
 
  @override
  Widget build(BuildContext context) {
    return AppSCaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ ]
          'login.welcome'.tr(), //
          style: TextStyle(
            fontSize: 40, //
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
