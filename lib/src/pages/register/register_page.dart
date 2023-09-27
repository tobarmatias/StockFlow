import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockflow/src/pages/register/register_controller.dart';

class RegisterPage extends StatelessWidget {
  RegisterController cont = Get.put(RegisterController());

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
            child:_textAlreadyHaveAccount(),
          ),
          body: Stack(
              children: [
                _boxForm(context),
                Column(
                  children: [
                    _imageCover(),
                  ],
                )
              ]
          )
      ),
    );
  }
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
            _textName(),
            _textLastName(),
            _textPhone(),
            _textPass(),
            _textConfirmPass(),
            _buttonRegister()
          ],
        ),
      ),
    );
  }
  Widget _textYourInfo(){
    return Container(
      margin: EdgeInsets.only(top: 40,bottom: 45),
      child: Text(
        'Registrate',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30
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
  Widget _textName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: cont.nameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Nombres',
            prefixIcon: Icon(Icons.person)
        ),
      ),
    );
  }
  Widget _textLastName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: cont.lastnameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Apellidos',
            prefixIcon: Icon(Icons.person_outline)
        ),
      ),
    );
  }
  Widget _textPhone(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: cont.phoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Teléfono',
            prefixIcon: Icon(Icons.phone)
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
  Widget _textConfirmPass(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: cont.confirmpassController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Confirmar Contraseña',
            prefixIcon: Icon(Icons.lock_outline)
        ),
      ),
    );
  }
  Widget _buttonRegister(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      child: ElevatedButton(
        onPressed: () => cont.Register(),
        child: Text(
          'Register',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    );
  }
  Widget _textAlreadyHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿Ya Tienes tu Cuenta?',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15
          ),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () => cont.goToLoginPage(),
          child: Text(
            'Inicia Sesión Aqui',
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
}
