import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/auth_data.dart';
import 'package:flutter_application_1/screens/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon.png',
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.15,
            ),

            SizedBox(height: 30),

            Text("BoxNow", style: TextStyle(fontSize: 25)),

            SizedBox(height: 30),

            FractionallySizedBox(
              widthFactor: 0.7,
              child: TextField(
                controller: _emailController,
                obscureText: true,

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),

            SizedBox(height: 20),

            FractionallySizedBox(
              widthFactor: 0.7,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  prefixIcon: Icon(Icons.password),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                final isValid = AuthTestData.validateCredentials(
                  _emailController.text,
                  _passwordController.text,
                );

                if (isValid) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen2()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Credenciales incorrectas')),
                  );
                }
              },
              child: Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
