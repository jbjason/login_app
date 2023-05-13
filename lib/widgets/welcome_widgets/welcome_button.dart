import 'package:flutter/material.dart';
import 'package:login_app/constants/constants.dart';
import 'package:login_app/screens/login_screen.dart';

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
        padding: const EdgeInsets.only(
          left: 40,
          right: 20,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backSecondary,
          boxShadow: const [
            BoxShadow(
              color: backColor,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(color: textColor, fontSize: 17),
            ),
            const Spacer(),
            Container(
              width: 50,
              padding: const EdgeInsets.all(5),
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
