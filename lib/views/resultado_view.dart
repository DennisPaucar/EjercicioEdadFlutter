import 'package:flutter/material.dart';

class ResultadoView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final resultado = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.indigo,
      ),
      body: Center(
        child: Text(
          resultado,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );

  }


}