import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String labelText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText, // Adicionado para esconder senha se necessário
      decoration: InputDecoration(
        labelText: labelText,

        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 83, 157, 247),
            width: 2.0,
          ),
        ),
        hintText: hintText, // ✅ Correto (sem ponto e vírgula)
      ),

      // style: const TextStyle(color: Colors.white),
      // decoration: InputDecoration(
      //   enabledBorder: const OutlineInputBorder(
      //     borderSide: BorderSide(color: Colors.white),
      //   ),
      //   focusedBorder: const OutlineInputBorder(
      //     borderSide: BorderSide(color: Colors.white),
      //   ),
      //   hintStyle: const TextStyle(color: Colors.grey),
      //   fillColor: Colors.black,
      //   filled: true,
    );
  }
}
