import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:user_list/app/data/user_model.dart';

class HomeController extends GetxController {
  final usuarios = <Usuario>[].obs;
  final isLoading = true.obs;
  late GetStorage box;
  @override
  void onInit() async {
    box = GetStorage();
    await cargaUsuarios();
    super.onInit();
  }

  Future<void> cargaUsuarios() async {
    isLoading.value = true;
    await 1.delay();
    usuarios.value = box.hasData("usuarios") ? usuariosFromJson(box.read('usuarios')) : [];
    isLoading.value = false;
  }

  void addUser(Usuario user) {
    usuarios.insert(0, user);
    box.write('usuarios', usuariosToJson(usuarios));
    update();
  }

  void deleteUser(String id) {
    usuarios.removeWhere((element) => element.id == id);
    box.write('usuarios', usuariosToJson(usuarios));
    update();
  }
}
