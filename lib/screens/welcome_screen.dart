import 'package:flutter/material.dart';
import 'package:login_app/constants/constants.dart';
import 'package:login_app/screens/login_screen.dart';

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
            child: Image.asset('assets/home_img1.png', fit: BoxFit.cover),
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

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key, required this.title, required this.size});
  final String title;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const LogInScreen()));
      },
      child: Container(
        width: size.width * .7,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backSecondary,
          boxShadow: const [
            BoxShadow(
              color: backColor,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
            BoxShadow(
              color: backSecondary,
              spreadRadius: 2,
              blurRadius: 30,
              offset: Offset(-2, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(color: textColor, fontSize: 17),
            ),
            const Spacer(),
            Container(
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: backSecondary,
                boxShadow: const [
                  BoxShadow(
                    color: backColor,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                  BoxShadow(
                    color: backThird,
                    spreadRadius: 2,
                    blurRadius: 30,
                    offset: Offset(-2, -2),
                  ),
                ],
              ),
              child: const Icon(
                Icons.arrow_forward_sharp,
                size: 33,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
