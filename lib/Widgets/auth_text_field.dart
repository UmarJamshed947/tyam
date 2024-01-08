import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final IconData icon;
  final double size;

  AuthTextField(
      {required this.keyboardType,
      required this.labelText,
      required this.obscureText,
      required this.icon,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          fillColor: Color(0xffE7E7F2),
          filled: true,
          prefixIcon: Icon(icon, size: size),
          prefixIconColor: Color(0xff00205C),
          label: Text(
            labelText,
          ),
          labelStyle: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
