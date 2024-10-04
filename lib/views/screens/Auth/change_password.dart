import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/controllers/auth_controller.dart';
import 'package:iot_application/views/screens/Settings/settings_screen.dart';

class ForgotPasswordChange extends StatefulWidget {
  const ForgotPasswordChange({super.key});

  @override
  State<ForgotPasswordChange> createState() => _ForgotPasswordChangeState();
}

class _ForgotPasswordChangeState extends State<ForgotPasswordChange> {
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
                          'Change Password',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'ClashDisplay',
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'New Password',
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
                              return 'Please Enter Your New Password';
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
                            hintText: 'New Password',
                            labelText: 'Enter Password',
                            prefixIcon: const Icon(
                              Icons.lock_outline,
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
                          'Confirm Password',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: authController.confirmPasswordController,
                          style: const TextStyle(color: Colors.white),
                          obscureText: _obscureText,
                          validator: (password) {
                            if (password!.length < 8 || password.length > 15) {
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
                            hintText: ' Confirm Password',
                            labelText: 'Conform Password',
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFFD9FE74)),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            onPressed: () {
                              if ((authController
                                          .passwordController.text.isEmpty ==
                                      true) ||
                                  (authController.confirmPasswordController.text
                                          .isEmpty ==
                                      true)) {
                                if (authController.passwordController ==
                                    authController.confirmPasswordController) {}
                              }
                            },
                            child: const Text(
                              'Done',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
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
                                  builder: (context) => const SettingsScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'Back',
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
