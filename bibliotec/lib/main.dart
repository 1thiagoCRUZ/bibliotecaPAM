import 'package:bibliotec/tecEventosPages/cardsteceventos.dart';
import 'package:bibliotec/tecEventosPages/editarPerfil.dart';
import 'package:bibliotec/homePages/homePage.dart';
import 'package:bibliotec/loginPages/cadastro.dart';
import 'package:bibliotec/loginPages/login.dart';
import 'package:bibliotec/tecEventosPages/metodospagamento.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MetodosPagamento(),
    );
  }
}
