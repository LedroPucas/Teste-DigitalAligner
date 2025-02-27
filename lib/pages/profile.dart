import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String email;
  final String senha;

  // Construtor para receber os dados
  const ProfileScreen({super.key, required this.email, required this.senha});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 16,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 49, 87, 153),
                  Color.fromARGB(255, 114, 183, 240),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          AppBar(
            title: Text(
              "Perfil do Usuário",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          Expanded(
            child: Center(
              child: Container(
                width: 400,
                height: 600,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(4, 4),
                    ),
                  ],
                  border: Border.all(
                    color: const Color.fromARGB(255, 199, 199, 199),
                    width: 1.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 50, color: Colors.blue),
                    SizedBox(height: 20),
                    Text(
                      "Informações de Login",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Divider(color: Colors.black38),
                    SizedBox(height: 50), // Ajuste de espaço
                    Text(
                      "📧 Email: $email",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "🔑 Senha: $senha",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
