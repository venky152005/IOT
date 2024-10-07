import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/controllers/auth_controller.dart';
import 'package:iot_application/views/screens/Auth/login_screen.dart';
import 'package:iot_application/views/screens/Auth/otp_screen.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final authController = Get.put(AuthController());
  final bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF282725),
        body: SingleChildScrollView(
          child: Form(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.92,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'ClashDisplay',
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
                            style: const TextStyle(color: Colors.white),
                            controller: authController.emailController,
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
                                borderSide: const BorderSide(
                                  color: Color(0xFFB9B8B8),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFB9B8B8),
                                ),
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
                          'Name',
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
                            style: const TextStyle(color: Colors.white),
                            controller: authController.nameController,
                            validator: (name) {
                              if (name!.isEmpty) {
                                return 'Please Enter Your Name';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFB9B8B8),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFB9B8B8),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Enter your name',
                              labelText: 'Name',
                              prefixIcon: const Icon(Icons.person),
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
                            style: const TextStyle(color: Colors.white),
                            controller: authController.passwordController,
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
                                borderSide: const BorderSide(
                                  color: Color(0xFFB9B8B8),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFB9B8B8),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Password',
                              labelText: 'Enter Password',
                              prefixIcon: const Icon(
                                Icons.lock_outline,
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
                          'Confirm Password',
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
                            style: const TextStyle(color: Colors.white),
                            obscureText: _obscureText,
                            validator: (password) {
                              if (password!.length < 8 ||
                                  password.length > 15) {
                                return 'Not a valid password';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFB9B8B8),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFB9B8B8),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Password',
                              labelText: 'Confirm Password',
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                              ),
                            ),
                          ),
                        ),
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
                                      if ((authController.emailController.text
                                                  .isEmpty ==
                                              true) ||
                                          (authController.nameController.text
                                                  .isEmpty ==
                                              true) ||
                                          (authController.passwordController
                                                  .text.isEmpty ==
                                              true)) {
                                        authController.isLoading.value == false;
                                      } else {
                                        bool res =
                                            await authController.register();
                                        debugPrint(res.toString());
                                        if (res == true) {
                                          Get.offAll(
                                            const OtpWidget(),
                                          );
                                        }
                                      }
                                    },
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  ),
                                ),
                              );
                      }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
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
                              Get.offAll(
                                const LoginScreen(),
                              );
                            },
                            child: const Text(
                              'Log In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
