import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/constants/app_string.dart';
import 'package:iot_application/views/screens/home_screen.dart';
import 'package:iot_application/views/screens/login_screen.dart';
import 'package:iot_application/views/screens/profile_screen.dart';
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
      home: const ProfileScreen(),
      // home: token == null ? const MyHomePage() : const HomeWidget(),
    );
  }
}
