import 'package:b_safe/app/routes/app_pages.dart';
import 'package:b_safe/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void _loadPreviousState() {
  FirebaseAuth.instance.authStateChanges().listen(
        (user) => Get.offAllNamed<dynamic>(
          user == null ? Routes.LOGIN : Routes.HOME,
        ),
      );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

<<<<<<< HEAD
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent));
=======
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent));
>>>>>>> 70aa2179506b38334a0f980271df83bc53a66ddd

  runApp(
    GetMaterialApp(
      onInit: _loadPreviousState,
      title: 'BeSafe',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
