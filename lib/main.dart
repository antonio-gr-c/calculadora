import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculadoraPantalla(),
    );
  }
}

class CalculadoraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black12,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(20),
              child: Text(
                '0',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: <Widget>[
                construirFilaBotones(['7', '8', '9', '/']),
                construirFilaBotones(['4', '5', '6', 'x']),
                construirFilaBotones(['1', '2', '3', '-']),
                construirFilaBotones(['0', '.', '+/-', '+']),
                construirFilaIgual(['=']),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget construirFilaBotones(List<String> botones) {
    return Expanded(
      child: Row(
        children: botones.map((boton) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.2),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo del botón
                  
                ),
                child: Text(
                  boton,
                  style: TextStyle(fontSize: 40, color: Colors.white), // Color del texto
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget construirFilaIgual(List<String> botones) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: botones.map((boton) {
        return Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(0.2),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Color de fondo del botón
              ),
              child: Text(
                boton,
                style: TextStyle(fontSize: 40, color: Colors.white), // Color del texto
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}