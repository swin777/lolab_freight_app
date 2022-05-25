import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/controller/login_controller.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            height: Get.height,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('assets/images/img_logo.png', width: 190)),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) => controller.id.value = value,
                        decoration: const InputDecoration(
                          hintText: '아이디',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide( color: Color(0xfff5f6f8) ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide( color: Color(0xfff5f6f8) ),
                          ),
                          filled: true,
                          fillColor: Color(0xfff5f6f8)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Obx(()=>
                        TextField(
                          onChanged: (value) => controller.pw.value = value,
                          obscureText: controller.obscure.value,
                          decoration: InputDecoration(
                            hintText: '비밀번호',
                            suffixIcon: IconButton(
                              icon:Icon(controller.obscure.value == true?Icons.remove_red_eye:Icons.password),
                              onPressed: () => controller.obscure.value = !controller.obscure.value,
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide( color: Color(0xfff5f6f8) ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide( color: Color(0xfff5f6f8) ),
                            ),
                            filled: true,
                            fillColor: const Color(0xfff5f6f8)
                          ),
                        )
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: Obx(() => 
                          AbsorbPointer(
                            absorbing: !(controller.id.value!='' && controller.pw.value!=''),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: (controller.id.value!='' && controller.pw.value!='') ? const Color(0xff005e35) : Colors.grey
                              ),
                              child: const Text("로그인"),
                              onPressed: () async{
                                print("login click");
                                Map<String, dynamic>? res = await controller.login();
                                if(res["result"]==true){
                                  Get.offAllNamed('/');
                                }else{
                                  Get.snackbar('로그인실패', '로그인이 실패하였습니다.', snackPosition: SnackPosition.TOP);
                                }
                              },
                            ),
                          )
                        ),
                      ),
                      const SizedBox(height: 40,),
                    ],
                  ),
                ),
                
                Image.asset('assets/images/img_login.png'),
              ]
            ),
          ),
        ),
      ),
    );
  }
}