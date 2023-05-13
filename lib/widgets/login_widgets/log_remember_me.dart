import 'package:flutter/material.dart';
import 'package:login_app/constants/constants.dart';

class LogRememberMe extends StatelessWidget {
  const LogRememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(width: 10),
        Container(
          height: 30,
          width: 30,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: gradient,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: backGradient,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text('Remember me', style: TextStyle(color: textColor)),
      ],
    );
  }
}
