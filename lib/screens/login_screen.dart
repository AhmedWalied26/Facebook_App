import 'package:facebook_app/screens/home_screen.dart';
import 'package:facebook_app/widgets/custom_create_button.dart';
import 'package:facebook_app/widgets/custom_login_button.dart';
import 'package:facebook_app/widgets/custom_text_button.dart';
import 'package:facebook_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 140),
              Image.asset('assets/images/facebook_rounded_logo.png'),
              const SizedBox(height: 62),
              CustomTextField(isEmail: true),
              const SizedBox(height: 24),
              CustomTextField(isEmail: false),
              const SizedBox(height: 40),
              CustomLoginButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  }
                },
              ),
              const SizedBox(height: 24),
              CustomTextButton(),
              const SizedBox(height: 224),
              CustomCreateButton(),
              const SizedBox(height: 10),
              Image.asset('assets/images/meta_logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
