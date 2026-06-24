import 'package:flutter/material.dart';

class CustomTopBody extends StatelessWidget {
  const CustomTopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, top: 18, right: 15),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 21,
            backgroundImage: AssetImage('assets/images/Messi.jpg'),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'What’s in Your Mind?',
                hintStyle: TextStyle(
                  color: Color(0xff898F9C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Image.asset('assets/images/image_icon.png', height: 30),
        ],
      ),
    );
  }
}
