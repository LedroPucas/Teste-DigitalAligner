import 'package:flutter/material.dart';
import 'package:telasteste/components/button.dart';
import 'package:telasteste/components/textfield.dart';
import 'package:telasteste/pages/newscreen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn(BuildContext context) {
    String correctun = "digitalaligner@gmail.com";
    String correctpw = "22022025";

    String username = usernameController.text;
    String password = passwordController.text;

    if (username == correctun && password == correctpw) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UploadScreen(email: username, senha: password),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Erro"),
          content: const Text("Usuário ou senha incorretos!"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '👋 Bem-vindo (a)',
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoColorEmoji',
                          color: Color.fromARGB(255, 0, 174, 255),
                        ),
                      ),
                      const SizedBox(height: 20),
                      MyTextField(
                        controller: usernameController,
                        hintText: 'Username',
                        obscureText: false,
                        labelText: "E-mail",
                      ),
                      const SizedBox(height: 20),
                      MyTextField(
                        controller: passwordController,
                        hintText: 'Password',
                        obscureText: true,
                        labelText: "Senha",
                      ),
                      const SizedBox(height: 30),
                      MyButton(onTap: () => signIn(context))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade900, Colors.blue.shade300],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/image.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
