import 'package:facebook_app/models/app_validation.dart';
import 'package:facebook_app/models/input_decoration.dart';
import 'package:facebook_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  bool isObseured = true;
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 140),
              Image.asset('assets/images/facebook_rounded_logo.png'),
              const SizedBox(height: 62),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  validator: AppValidation.validateEmail,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: buildInputDecoration(
                    hintText: 'Mobile Number or Email Address',
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  obscureText: widget.isObseured,
                  validator: AppValidation.validatePassword,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: buildInputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      padding: EdgeInsets.only(right: 17),
                      color: Color(0xff898F9C),
                      onPressed: () {
                        widget.isObseured = !widget.isObseured;
                        setState(() {});
                      },
                      icon: Icon(
                        widget.isObseured
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1877F2),
                    padding: EdgeInsets.symmetric(horizontal: 185),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
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
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgotten Password ?',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff898F9C),
                  ),
                ),
              ),
              const SizedBox(height: 224),
              SizedBox(
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
              ),
              const SizedBox(height: 10),
              Image.asset('assets/images/meta_logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
