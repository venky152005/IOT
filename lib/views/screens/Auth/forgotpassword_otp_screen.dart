import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/controllers/auth_controller.dart';
import 'package:iot_application/views/screens/Auth/change_password.dart';
import 'package:pinput/pinput.dart';

class ForgotpasswordOtpScreen extends StatefulWidget {
  const ForgotpasswordOtpScreen({super.key});

  @override
  State<ForgotpasswordOtpScreen> createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordOtpScreen> {
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282725),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Verification',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'ClashDisplay',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Enter the code sent to the number',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    authController.emailController.text,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Pinput(
                  controller: authController.otpController,
                  length: 4,
                  closeKeyboardWhenCompleted: true,
                  defaultPinTheme: PinTheme(
                    height: 60,
                    width: 56,
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 28),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFB9B8B8),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Didn't receive code?",
                    style: TextStyle(color: Color(0xFFD9FE74), fontSize: 15),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Resend",
                    style: TextStyle(
                        color: Color(0xFFD9FE74),
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFD9FE74)),
                  child: TextButton(
                    onPressed: () async {
                      if ((authController.emailController.text.isEmpty ==
                              true) ||
                          (authController.otpController.text.isEmpty == true)) {
                        authController.isLoading.value == false;
                      } else {
                        bool res = await authController.forgotPasswordOtp();
                        debugPrint(res.toString());
                        if (res == true) {
                          Get.to(
                            const ForgotPasswordChange(),
                          );
                        }
                      }
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
