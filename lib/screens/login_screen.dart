import 'package:flutter/material.dart';
import 'package:login_app/constants/constants.dart';
import 'package:login_app/widgets/login_widgets/log_bottom_body.dart';
import 'package:login_app/widgets/login_widgets/log_remember_me.dart';
import 'package:login_app/widgets/login_widgets/log_textfield.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                  gradient: backGradient, boxShadow: buttonShadow),
            ),
          ),
          Positioned(
            top: 0,
            left: -20,
            right: -20,
            child:
                Image.asset('assets/images/home_img2.png', fit: BoxFit.contain),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LogTextField(
                    title: 'Email Address:',
                    hintText: 'xyz@gmail.com',
                    obsecure: false,
                  ),
                  const LogTextField(
                    title: 'Password:',
                    hintText: '******',
                    obsecure: true,
                  ),
                  const LogRememberMe(),
                  const SizedBox(height: 30),
                  LogBottomBody(size: size),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
