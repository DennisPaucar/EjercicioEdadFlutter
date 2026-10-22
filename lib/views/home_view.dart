import 'package:flutter/material.dart';
import '../controllers/vendedor_controller.dart';
import '../widgets/boton_calcular.dart';
import '../widgets/input_ventas.dart';

class PaginaView extends StatefulWidget {
  const PaginaView({super.key});

  @override
  State<StatefulWidget> createState() => _PaginaViewState();

}

class _PaginaViewState extends State<PaginaView>{
  final controller = VendedorController();
  final venta1Ctrl = TextEditingController();
  final venta2Ctrl = TextEditingController();
  final venta3Ctrl = TextEditingController();


  void calcular(){
    final resultado = controller.calcularSueldo(venta1Ctrl.text, venta2Ctrl.text, venta3Ctrl.text);
    //paso de parametros
    Navigator.pushNamed(context, '/resultado', arguments: resultado);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular Sueldo'),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              InputVentas(controller: venta1Ctrl, label: "venta 1"),
              InputVentas(controller: venta2Ctrl, label: "venta 2"),
              InputVentas(controller: venta3Ctrl, label: "venta 3"),
              BotonCalcular(onPressed: calcular)
            ],
          ),
      ),
      
      
    );
  }


}