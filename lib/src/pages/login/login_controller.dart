import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void goToRegisterPage(){
    Get.toNamed('/register');
  }

  void Login(){
    String email = emailController.text.trim();
    String pass = passController.text.trim();

    print('Email ${email}');
    print('Pass ${pass}');

    if(isValidForm(email,pass)){
      Get.snackbar('Formulario Valido', 'Bienvenido a Stock Flow');
    }
  }

  bool isValidForm(String email, String pass){

    if(email.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar un email');
      return false;
    }
    if(!GetUtils.isEmail(email)){
      Get.snackbar('Formulario no Valido', 'El email no es Valido');
      return false;
    }
    if(pass.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar una password');
      return false;
    }
    return true;
  }

}