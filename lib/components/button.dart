import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Centraliza o botão no eixo Y e X
      child: SizedBox(
        width:
            200, // Define um tamanho para o botão (ajuste conforme necessário)
        height: 50,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: const Text("Entrar"),
        ),
      ),
    );
  }
}
