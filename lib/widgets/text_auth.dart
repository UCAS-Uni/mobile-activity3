import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  final bool pass;
  final IconData? icon;

  const TextFieldAuth({
    super.key,
    this.icon,
    required this.pass,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      width: 326,
      height: 50,
      child: TextField(
        obscureText: pass,
        decoration: InputDecoration(
          suffixIcon: Icon(icon),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
