import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  void goToLoginPage(){
    Get.toNamed('/');
  }
  void Register(){
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastname = lastnameController.text;
    String phone = phoneController.text.trim();
    String pass = passController.text.trim();
    String confirmpass = confirmpassController.text.trim();

    print('Email ${email}');
    print('Name ${name}');
    print('Last Name ${lastname}');
    print('Phone ${phone}');
    print('Pass ${pass}');
    print('Confirm Pass ${confirmpass}');

    if(isValidForm(email,name,lastname,phone,pass,confirmpass)){
      Get.snackbar('Formulario Valido', 'Bienvenido a Stock Flow');
    }
  }

  bool isValidForm(String email,String name,String lastname,String phone, String pass,String confirmpass){

    if(email.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar un Email');
      return false;
    }
    if(name.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar un Nombre');
      return false;
    }
    if(lastname.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar un Apellido');
      return false;
    }
    if(phone.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar un Telefono');
      return false;
    }

    if(!GetUtils.isEmail(email)){
      Get.snackbar('Formulario no Valido', 'El email no es Valido');
      return false;
    }

    if(pass.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar una Password');
      return false;
    }
    if(confirmpass.isEmpty){
      Get.snackbar('Formulario no Valido', 'Debes ingresar una Confirmación de Password');
      return false;
    }
    if(pass != confirmpass){
      Get.snackbar('Formulario no Valido', 'Las Password no coinciden');
      return false;
    }
    return true;
  }



}