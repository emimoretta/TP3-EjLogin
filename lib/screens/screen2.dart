import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  final String email;
  const Screen2({super.key, required this.email});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bienvenido", style: TextStyle(fontSize: 20)),

            SizedBox(height: 20),

            Text(widget.email, style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
