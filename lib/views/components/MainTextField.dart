import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    super.key,
    required this.hintText,
    required this.formKey,
    required this.validator,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  });

  final String hintText;
  final Key formKey;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return FormField(
      key: key,
      builder: (field) => TextFormField(
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}
