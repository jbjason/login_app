import 'package:flutter/material.dart';
import 'package:login_app/constants/constants.dart';

class LogBottomBody extends StatelessWidget {
  const LogBottomBody({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: size.width * .5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white10),
            gradient: gradient,
            boxShadow: buttonShadow,
          ),
          child: const Text(
            'Log In',
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          'or SignUp with',
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getIcon('assets/icons/google32.png'),
            const SizedBox(width: 60),
            getIcon('assets/icons/apple32.png'),
          ],
        ),
      ],
    );
  }

  Container getIcon(String img) => Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.white12),
          gradient: const LinearGradient(
            colors: [Colors.white12, backThird],
            stops: [0, .6],
          ),
          boxShadow: buttonShadow,
        ),
        child: Image.asset(img, fit: BoxFit.contain),
      );
}
