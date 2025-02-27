import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  final VoidCallback onTap;

  const UploadButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 80, top: 80, right: 50),
        height: 185,
        width: 439,
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 43, 43, 43)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 45,
                    weight: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('  Clique aqui para anexar um arquivo'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
