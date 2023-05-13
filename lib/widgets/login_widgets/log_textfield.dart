import 'package:flutter/material.dart';
import 'package:login_app/constants/constants.dart';

class LogTextField extends StatelessWidget {
  const LogTextField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.obsecure,
  }) : super(key: key);
  final String title;
  final String hintText;
  final bool obsecure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: textColor, fontSize: 18),
        ),
        const SizedBox(height: 7),
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: gradient,
          ),
          child: TextField(
            textInputAction: TextInputAction.search,
            textCapitalization: TextCapitalization.words,
            obscureText: obsecure,
            style: const TextStyle(
              letterSpacing: 1.3,
              wordSpacing: 1.5,
              color: Colors.white,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: backColor,
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color(0xFF757575),
                fontSize: 14,
                letterSpacing: 1.3,
                wordSpacing: 1.5,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
