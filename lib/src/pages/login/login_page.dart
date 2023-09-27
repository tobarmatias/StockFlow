import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockflow/src/pages/login/login_controller.dart';

class LoginPage extends StatelessWidget {

  LoginController cont = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/backgroundcover.png'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Container(
          height: 50,
          child: _textDontHaveAccount(),
        ),
        body: Stack(
          children: [
            _boxForm(context),
            Column(
              children: [
                _imageCover(),
                _textAppName()
              ],
            )
          ]
        )
      ),
    );
  }
  //PRIVATE
  Widget _textAppName(){
    return Text(
      'Tu Inventario Fácil',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
  Widget _boxForm(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 40 ,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.33, left: 50, right: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
            offset: Offset(0, 0.75)
          )
        ]
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textYourInfo(),
            _textEmail(),
            _textPass(),
            _buttonLogin()
          ],
        ),
      ),
    );
  }
  Widget _textEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: cont.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo Electronico',
          prefixIcon: Icon(Icons.email)
        ),
      ),
    );
  }
  Widget _textPass(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: cont.passController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            prefixIcon: Icon(Icons.lock)
        ),
      ),
    );
  }
  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      child: ElevatedButton(
        onPressed: () => cont.Login(),
        child: Text(
          'Logn',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
    );
  }
  Widget _textYourInfo(){
    return Container(
      margin: EdgeInsets.only(top: 40,bottom: 45),
      child: Text(
        'Inicia Sesión',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30
        ),
      ),
    );
  }

  Widget _textDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No Tienes Cuenta?',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15
          ),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () => cont.goToRegisterPage(),
          child: Text(
            'Registrate Aqui',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
          ),
        )
      ],
    );
  }

  // PRIVATE
  Widget _imageCover(){
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 15),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/img/icono.png',
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
