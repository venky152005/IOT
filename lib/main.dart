import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/constants/app_string.dart';
import 'package:iot_application/views/screens/Auth/login_screen.dart';
import 'package:iot_application/views/screens/Screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? token;

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    token = pref.getString(ApiString.token);

    if (token == null) {
    } else {
      Get.offAll(HomeWidget());
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const TimerWidget(),
      home: token == null ? const LoginScreen() : HomeWidget(),
    );
  }
}
