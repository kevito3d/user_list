import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list/app/controllers/home_controller.dart';
import 'package:user_list/app/data/user_model.dart';

class UserController extends GetxController {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController edadcontroller = TextEditingController();
  final TextEditingController profesionController = TextEditingController();

  void addUser({required bool saveAndExit}) {
    if (validate()) {
      // ocultar el teclado si lo tengo abierto
      Get.focusScope!.unfocus();
      var homeController = Get.find<HomeController>();
      homeController.addUser(
        Usuario(
          id: (homeController.usuarios.length + 1).toString(),
          nombre: nombreController.text,
          edad: int.parse(edadcontroller.text),
          profesion: profesionController.text,
        ),
      );
      if (saveAndExit) {
        Get.back();
      }
      nombreController.clear();
      edadcontroller.clear();
      profesionController.clear();
      Get.snackbar(
        "ok",
        "Usuario agregado correctamente",
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(10),
        backgroundColor: Colors.green,
      );
    }
  }

  bool validate() {
    if (nombreController.text.isEmpty || edadcontroller.text.isEmpty || profesionController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Todos los campos son obligatorios",
        backgroundColor: Colors.black,
        colorText: Colors.white,
      );
      return false;
    }
    return true;
  }
}
