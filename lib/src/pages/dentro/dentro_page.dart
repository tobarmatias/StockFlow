import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  class Dentropage extends StatelessWidget {
  const Dentropage();
  
  @override
  Widget build(BuildContext context) {
  return Stack(
  children: [
  Container(
  decoration: BoxDecoration(
  image: DecorationImage(
  image: AssetImage('assets/img/backgroundcover.png'),
  fit: BoxFit.cover,
  ),
  ),
  ),
  Column(
  children: [
  SizedBox(height: 180), // Separación vertical entre la imagen y los botones
  _buttonBodega(),
  SizedBox(height: 10), // Separación vertical entre los botones
  _buttonRepartidor(),
  SizedBox(height: 10), // Separación vertical entre los botones
  _buttonCliente(),
  ],
  ),
  ],
  );
  }


  Widget _buttonBodega() {
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 110, vertical: 50),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Bodega',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    );
  }


  Widget _buttonRepartidor() {
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Repartidor',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    );
  }


  Widget _buttonCliente() {
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Cliente',
          style: TextStyle  (
              color: Colors.black
          ),
        ),
      ),
    );
  }
}



