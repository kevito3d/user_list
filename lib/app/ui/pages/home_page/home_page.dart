import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list/app/ui/pages/home_page/widgets/btn_add_user.dart';
import 'package:user_list/app/ui/pages/home_page/widgets/list_tile_user.dart';

import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis usuarios'),
        backgroundColor: const Color.fromARGB(255, 5, 7, 5),
        actions: const [
          // button for push to page user
          BtnAddUserWidget()
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 203, 199, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : controller.usuarios.isEmpty
                    ? const Center(
                        child: Text("No hay usuarios"),
                      )
                    : ListView.builder(
                        itemCount: controller.usuarios.length,
                        itemBuilder: (context, index) => ListTileUser(
                          usuario: controller.usuarios[index],
                          onDelete: () => controller.deleteUser(controller.usuarios[index].id),
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}
