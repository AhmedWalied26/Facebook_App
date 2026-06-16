import 'package:flutter/material.dart';

InputDecoration buildInputDecoration({
  required String hintText,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    suffixIcon: suffixIcon,
    fillColor: Color(0xFFE4E8F0),
    filled: true,
    hintText: hintText,
    hintStyle: TextStyle(
      color: Color(0xff898F9C),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      gapPadding: 15,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2),
      borderRadius: BorderRadius.circular(16),
      gapPadding: 15,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1),
      borderRadius: BorderRadius.circular(16),
      gapPadding: 15,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1),
      borderRadius: BorderRadius.circular(16),
      gapPadding: 15,
    ),
  );
}
