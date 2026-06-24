import 'package:flutter/material.dart';

class CustomCreateButton extends StatelessWidget {
  const CustomCreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 150),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff1877F2)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Create Account',
          style: TextStyle(
            color: Color(0xff1877F2),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
