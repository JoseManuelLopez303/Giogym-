import 'package:flutter/material.dart';

class conversion extends StatefulWidget {
  conversion({Key? key}) : super(key: key);

  @override
  _conversionState createState() => _conversionState();
}

class _conversionState extends State<conversion> {
  double _peso = 0;
  double _altura = 0;

  double _Resultado1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC'),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            _calificacion1(),
            Divider(),
            _calificacion2(),
            Divider(),
            _resultado()
          ]),
    );
  }

  Widget _calificacion1() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.only()),
        hintText: 'Peso en kg',
        labelText: 'peso en kg',
        helperText: 'Ingrese su peso en kg',
        suffixIcon: Icon(Icons.add_task),
      ),
      onChanged: (valor) {
        _peso = double.parse(valor);
        setState(() {
          _Resultado1 = _peso;
        });
      },
    );
  }

  Widget _calificacion2() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.only()),
        hintText: 'Altura ',
        labelText: 'Altura ',
        helperText: 'Ingrese su altura',
        suffixIcon: Icon(Icons.add_task),
      ),
      onChanged: (valor) {
        _altura = double.parse(valor);
        setState(() {
          _Resultado1 = (_peso) / ((_altura) * (_altura));
        });
      },
    );
  }

  _resultado() {
    return ListTile(
      title: Text('Su indice de masa corporal es: $_Resultado1'),
    );
  }
}
