import 'package:get/get.dart';
import 'package:lolab_freight_app/src/controller/app_controller.dart';
import 'package:lolab_freight_app/src/repository/loginRespository.dart';

class LoginController extends GetxController{
  static LoginController get to => Get.find();
  Rx<String> id = "".obs;
  Rx<String> pw = "".obs;
  Rx<bool> obscure = true.obs;

  Future<Map<String, dynamic>> login() async{
    Map<String, dynamic>? result = await LoginRepository.to.login(id.value, pw.value);
    return Future.value(result);
  }

  void logout() async{
    LoginRepository.to.logout();
    AppController.to.allInit();
    Get.offAllNamed('/login');
  }
}