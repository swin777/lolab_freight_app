import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/controller/app_controller.dart';
import 'package:lolab_freight_app/src/globalVariables.dart';

import 'package:encrypt/encrypt.dart';
import 'package:lolab_freight_app/src/models/userInfo/car_owner.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepository extends GetConnect {
  static LoginRepository get to => Get.find();
  RSAPublicKey? publicKey;
  RSAPrivateKey? privateKey;
  AppController? appController;
  
  @override
  void onInit() async{
    allowAutoSignedCert = true;
    httpClient.baseUrl = globalBaseUrl_epc;
    httpClient.timeout = globalTimeout;

    final publicPem = await rootBundle.loadString('assets/pem/public.pem');
    publicKey = RSAKeyParser().parse(publicPem) as RSAPublicKey;
    final privatePem = await rootBundle.loadString('assets/pem/private.pem');
    privateKey = RSAKeyParser().parse(privatePem) as RSAPrivateKey;

    appController = AppController.to;
  }

  Future<Map<String, dynamic>?> login(String id, String pw) async{
    Encrypter encrypter = Encrypter(RSA(publicKey: publicKey, privateKey: privateKey));
    final response = await post("/v1/carown/login", {"carOwnerId":id, "carOwnerPassword":encrypter.encrypt(pw).base64}, headers: globalHeaders);
    if (response.status.hasError) {
      return {"result":false, "message":response.statusText!};
    } else {
      if (response.body != null ) {
        if(response.body['resultMsg']=='success'){
          //CarOwner car = CarOwner.fromJson(response.body);
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('carOwner', response.body.toString());
          appController!.access_token.value = response.body['access_token'];
          appController!.refresh_token.value = response.body['refresh_token'];
          setGlobalHeaders({...globalHeaders, 'Authorization': 'Bearer ${response.body['access_token']}'});
          return {"result":true};
        }else{
          return {"result":false, "message":response.body['resultMsg']};
        }
      }
    }
  }
}									
