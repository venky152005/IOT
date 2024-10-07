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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  bool _obscureText = true;

  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF282725),
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 40, left: 20),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Email',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
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
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Password',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
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
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
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
                                  fontSize: 14,
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
                                color: Color(0xFFD9FE74),
                                strokeWidth: 2.0,
                              )
                            : Center(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xFFD9FE74)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextButton(
                                    onPressed: () async {
                                      if (_formkey.currentState!.validate()) {
                                        _formkey.currentState!.save();

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
                                              Get.to(
                                                () => HomeWidget(),
                                              );
                                            } else {
                                              Get.to(
                                                () => const OtpWidget(),
                                              );
                                            }
                                          }
                                        }
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
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
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            onPressed: () {
                              Get.off(
                                const SignUpWidget(),
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
