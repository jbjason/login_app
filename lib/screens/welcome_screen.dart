import 'package:flutter/material.dart';
import 'package:login_app/constants/constants.dart';
import 'package:login_app/widgets/welcome_widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(gradient: backGradient),
            ),
          ),
          Positioned(
            left: -50,
            right: -50,
            bottom: -65,
            height: size.height * .6,
            child:
                Image.asset('assets/images/home_img1.png', fit: BoxFit.cover),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * .1),
                Text('Welcome to', style: gettextColor),
                Text('Online Location!', style: gettextColor),
                SizedBox(height: size.height * .1),
                WelcomeButton(title: 'Sign in', size: size),
                const SizedBox(height: 20),
                WelcomeButton(title: 'Sign up', size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
