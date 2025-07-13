import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/banner.png"),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  height: 124,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Plataforma de cursos do sistema',
                      textAlign: TextAlign.center,
                      style: (
                        TextStyle(
                          fontSize: 32,
                        )
                      ),
                    ),
                    const SizedBox(height: 32,),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('E-mail'),
                      ),
                    ),
                    const SizedBox(height: 32,),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Senha'),
                      ),
                    ),
                    const SizedBox(height: 32,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, "home");
                      }, 
                      child: const Text(
                        'entrar',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}