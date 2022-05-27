import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/login.dart';
import 'package:lolab_freight_app/src/utils/util.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'src/app.dart';
import 'src/binding/init_binding.dart';

void main() {
  runApp(const MyApp());
}

Widget Splash() { 
  return SplashScreenView(
    navigateRoute: const Login(),
    duration: 2000,
    imageSize: 130,
    imageSrc: "assets/images/kt_logo.png",
    text: "KT 물류",
    textType: TextType.ColorizeAnimationText,
    textStyle: const TextStyle(
      fontSize: 40.0,
    ),
    colors: const [Colors.purple, Colors.blue, Colors.yellow,Colors.red],
    backgroundColor: const Color(0xff005e35),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color(0xff005e35)), //
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(backgroundColor: Colors.grey[200],),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18
          ),
          headline3: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17
          ),
          bodyText2: TextStyle(
            color: Color(0xff606060), fontWeight: FontWeight.bold, fontSize: 16
          ),
          caption: TextStyle(
            color: Color(0xff606060), fontWeight: FontWeight.bold, fontSize: 14,
          ),
          headline6: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16
          ),
          headline5: TextStyle(
            color: Color(0xff005e35), fontWeight: FontWeight.bold, fontSize: 14,
          ),
        )
      ),
      initialBinding: InitBinding(),
      initialRoute: "/splash",
      getPages: [
        GetPage(name: "/splash", page: () => Splash()),
        GetPage(name: "/", page: () => const App()),
        GetPage(name: "/login", page: () => const Login()),
      ],
    );
  }
}

