// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class UnEditableTextField extends StatelessWidget {
  const UnEditableTextField({
    super.key,
    required this.title,
    required this.controller,
  });
  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        enabled: false,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 30, right: 30),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide.none,
          ),
          filled: true,
          labelText: title,
        ),
      ),
    );
  }
}
