/* el sueldo neto de un trabajador se calculado con la suma de un sueldo
* basico + el 12% del monto total de lo que ha vendido entonces se busca saber
* el suel neto sabiendo q hizo 3 ventas al mes  */
import 'package:flutter/material.dart';
import 'views/home_view.dart';
import 'views/resultado_view.dart';

void  main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sueldo',
      initialRoute: '/',
      routes: {
        '/': (context) => PaginaView(),
        '/resultado': (context) => ResultadoView(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
      ),
    );
  }

}



