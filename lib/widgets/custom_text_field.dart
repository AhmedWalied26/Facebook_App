import 'package:facebook_app/models/app_validation.dart';
import 'package:facebook_app/models/input_decoration.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final bool isEmail;
  const CustomTextField({super.key, this.isEmail = true});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObseured = true;

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: widget.isEmail ? !isObseured : isObseured,
        validator: widget.isEmail
            ? AppValidation.validateEmail
            : AppValidation.validatePassword,
        controller: widget.isEmail ? emailController : passwordController,
        keyboardType: widget.isEmail ? .emailAddress : .visiblePassword,
        decoration: buildInputDecoration(
          hintText: widget.isEmail
              ? 'Mobile Number or Email Address'
              : 'Password',
          suffixIcon: widget.isEmail
              ? SizedBox()
              : IconButton(
                  padding: EdgeInsets.only(right: 17),
                  color: Color(0xff898F9C),
                  onPressed: () {
                    isObseured = !isObseured;
                    setState(() {});
                  },
                  icon: Icon(
                    isObseured ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
        ),
      ),
    );
  }
}
