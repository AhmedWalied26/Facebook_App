import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Forgotten Password ?',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Color(0xff898F9C),
        ),
      ),
    );
  }
}
