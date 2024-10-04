// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/controllers/auth_controller.dart';
import 'package:iot_application/controllers/device_controller.dart';
import 'package:iot_application/views/screens/Auth/forgotpassword_screen.dart';
import 'package:iot_application/views/screens/Screen/device_screen.dart';
import 'package:iot_application/views/screens/Screen/home_screen.dart';
import 'package:iot_application/views/screens/Auth/otp_screen.dart';
import 'package:iot_application/views/screens/Auth/signup_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _obscureText = true;

  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF282725),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 100, left: 20),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'ClashDisplay',
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Welcome back! \nPlease enter your details.',
                          style: TextStyle(color: Color(0xFFFFFFFF)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Email',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: authController.emailController,
                          style: const TextStyle(color: Colors.white),
                          validator: (email) {
                            if (email!.isEmpty) {
                              return 'Please Enter Your Email';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$')
                                .hasMatch(email)) {
                              return 'Not a valid email';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFFB9B8B8)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFFB9B8B8)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'Enter Your Email ID',
                            labelText: 'Email ID',
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Password',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: authController.passwordController,
                          style: const TextStyle(color: Colors.white),
                          obscureText: _obscureText,
                          validator: (password) {
                            if (password!.isEmpty) {
                              return 'Please Enter Your Password';
                            } else if (password.length < 8 ||
                                password.length > 15) {
                              return 'Not a valid password';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFFB9B8B8)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFFB9B8B8)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'Password',
                            labelText: 'Enter Password',
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotpasswordScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Forgot Password ??',
                                style: TextStyle(
                                  color: Color(0xFFD9FE74),
                                  fontSize: 18,
                                  fontFamily: 'ClashDisplay',
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFFD9FE74),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Obx(() {
                        return authController.isLoading.value == true
                            ? const CircularProgressIndicator(
                                color: Colors.blueGrey,
                                strokeWidth: 2.0,
                              )
                            : Center(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xFFD9FE74)),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextButton(
                                    onPressed: () async {
                                      if (formkey.currentState!.validate()) {
                                        formkey.currentState!.save();

                                        if ((authController.emailController.text
                                                    .isEmpty ==
                                                true) ||
                                            (authController.passwordController
                                                    .text.isEmpty ==
                                                true)) {
                                          authController.isLoading.value ==
                                              false;
                                        } else {
                                          bool res =
                                              await authController.login();
                                          debugPrint(res.toString());
                                          if (res == true) {
                                            debugPrint(authController
                                                .isVerified.value
                                                .toString());
                                            if (authController
                                                    .isVerified.value ==
                                                true) {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeWidget(),
                                                ),
                                              );
                                            } else {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const OtpWidget()),
                                              );
                                            }
                                          }
                                        }
                                        // if (_email == 'venky15.12.2005@gmail.com' &&
                                        //     _password == 'venky152005') {
                                        //   Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) => const FindDevice(),
                                        //     ),
                                        //   );
                                        // } else {
                                        //   ScaffoldMessenger.of(context).showSnackBar(
                                        //     const SnackBar(
                                        //       content:
                                        //           Text('Invalid Username or Password'),
                                        //     ),
                                        //   );
                                        // }
                                      }
                                    },
                                    child: const Text(
                                      'Log In',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  ),
                                ),
                              );
                      }),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: const Color(0xFFD9FE74),
                            ),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpWidget(),
                                ),
                              );
                            },
                            child: const Text(
                              'Sign Up',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomescreenWidget extends StatelessWidget {
  HomescreenWidget({super.key});

  final deviceController = Get.put(DeviceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/modern-styled-small-entryway.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF282725).withOpacity(0.9),
          )),
          Positioned(
            top: MediaQuery.of(context).size.height * 1 / 2,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(40),
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFD9FE74)),
              child: TextButton(
                onPressed: () async {
                  await deviceController.deviceList();
                },
                child: const Text(
                  'Find Ultrasonic Generator',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
