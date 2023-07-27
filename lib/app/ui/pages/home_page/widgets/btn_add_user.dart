import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list/app/routes/pages.dart';

class BtnAddUserWidget extends StatelessWidget {
  const BtnAddUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.user),
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
            Text("Agregar Usuario")
          ],
        ),
      ),
    );
  }
}
