import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:user_list/app/ui/pages/user_page/widgeds/btn_save_widget.dart';

import '../../controllers/user_controller.dart';

class UserPage extends GetView<UserController> {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Usuario'),
        backgroundColor: const Color.fromARGB(255, 5, 7, 5),
      ),
      backgroundColor: const Color.fromARGB(255, 203, 199, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.tealAccent.shade100,
                    blurRadius: 5,
                    offset: const Offset(0, -5),
                  )
                ],
              ),
              child: TextField(
                controller: controller.nombreController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre',
                  labelStyle: TextStyle(color: Colors.green, fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.tealAccent.shade100,
                    blurRadius: 5,
                    offset: const Offset(0, -5),
                  )
                ],
              ),
              child: TextField(
                controller: controller.edadcontroller,
                style: const TextStyle(color: Colors.white),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Edad',
                  labelStyle: TextStyle(color: Colors.green, fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.tealAccent.shade100,
                    blurRadius: 5,
                    offset: const Offset(0, -5),
                  )
                ],
              ),
              child: TextField(
                controller: controller.profesionController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Profesión',
                  labelStyle: TextStyle(color: Colors.green, fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              // color: Colors.black12,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: BtnSaveWidget(
                        text: "Guardar y salir",
                        onPressed: () => controller.addUser(
                              saveAndExit: true,
                            ),
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: BtnSaveWidget(
                        text: "Guardar y seguir",
                        onPressed: () => controller.addUser(
                              saveAndExit: false,
                            )),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
