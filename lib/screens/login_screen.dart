import 'package:flutter/material.dart';
import 'package:login_app/constants/constants.dart';

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
              decoration: BoxDecoration(gradient: backGradient),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * .1),
                const LogInTextField(
                  title: 'Email Address:',
                  hintText: 'xyz@gmail.com',
                  obsecure: false,
                ),
                const LogInTextField(
                  title: 'Password:',
                  hintText: '******',
                  obsecure: true,
                ),
                const LogInRememberMe(),
                SizedBox(height: size.height * .1),
                Container(
                  height: 60,
                  width: size.width * .4,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: gradient,
                  ),
                  child: const Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  'or SignUp with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                // Container(
                //   padding: EdgeInsets.all(20),
                //   decoration: Icon(CuperTino.goole),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LogInRememberMe extends StatelessWidget {
  const LogInRememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        const Text(
          'Remember me',
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}

class LogInTextField extends StatelessWidget {
  const LogInTextField({
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
        const SizedBox(height: 30),
      ],
    );
  }
}
