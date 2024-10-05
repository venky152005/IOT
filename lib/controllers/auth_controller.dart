// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/constants/api_string.dart';
import 'package:iot_application/constants/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final otpController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isVerified = false.obs;

  Future<bool> register() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, String> header = {
      'Content-type': 'application/json; charset=utf-8'
    };
    isLoading.value = true;

    Map body = {
      "email": emailController.text.toString(),
      "name": nameController.text.toString(),
      "password": passwordController.text.toString(),
    };

    debugPrint(body.toString());

    preferences.setString(ApiString.email, emailController.text);

    http.Response response = await http.post(
      Uri.parse(ApiEndPoint.register),
      headers: header,
      body: jsonEncode(body),
    );

    var data = jsonDecode(response.body);

    // debugPrint(response.body);
    if (data['status'] == true) {
      /*   preferences.setString(ApiString.token, data['token']);
        preferences.setString(ApiString.id, data['data']["_id"]);
        preferences.setString(ApiString.type, data['data']["user_type"]); */
      Get.snackbar("Success", "User Registered successfully",
          backgroundColor: const Color(0xFFFFFFFF), colorText: Colors.black);
      isLoading.value = false;
      return true;
    } else {
      Get.snackbar("Error", data['message']);
      isLoading.value = false;

      return false;
    }
  }

  Future<bool> login() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, String> header = {
      'Content-type': 'application/json; charset=utf-8'
    };
    isLoading.value = true;

    Map body = {
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
    };

    debugPrint(body.toString());

    preferences.setString(ApiString.email, emailController.text);

    http.Response response = await http.post(
      Uri.parse(ApiEndPoint.login),
      headers: header,
      body: jsonEncode(body),
    );

    var data = json.decode(response.body);

    debugPrint(response.body);
    if (response.statusCode == 200) {
      if (data['status'] == true) {
        // clear();
        preferences.setString(ApiString.id, data['data']["user_id"]);
        preferences.setString(ApiString.email, data['data']["email"] ?? "");

        if (data['data']['is_verified'] == 1) {
          preferences.setString(ApiString.token, data['token']);
          isVerified.value = true;
        }
        Get.snackbar("Success", data['message'],
            backgroundColor: const Color(0xFFFFFFFF), colorText: Colors.black);

        isLoading.value = false;
        return true;
      }
    }

    Get.snackbar("Error", data['message'] ?? 'Server Error');
    isLoading.value = false;

    return false;
  }

  verifyOtp() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, String> header = {
      'Content-type': 'application/json; charset=utf-8'
    };

    Map body = {
      "email": emailController.text.toString(),
      "otp": otpController.text.toString(),
    };
    debugPrint(body.toString());

    http.Response response = await http.post(
      Uri.parse(ApiEndPoint.otpVerification),
      headers: header,
      body: jsonEncode(body),
    );

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      if (data['status'] == true) {
        // clear();
        /*  preferences.setString(ApiString.token, data['token']);
          preferences.setString(ApiString.id, data['data']["_id"]);
          preferences.setString(ApiString.email, data['data']["email"] ?? "");
          preferences.setString(
              ApiString.mobileNo, data['data']["mobile_number"] ?? ""); */
        Get.snackbar("Success", data['message']);
      }
      isLoading.value = false;
      return true;
    } else {
      Get.snackbar("Error", data['message']);
      isLoading.value = false;

      return false;
    }
  }

  Future<bool> forgotPassword() async {
    Map<String, String> header = {
      'Content-type': 'application/json; charset=utf-8'
    };

    Map body = {"email": emailController.text.toString()};
    debugPrint(body.toString());

    http.Response response = await http.post(
        Uri.parse(ApiEndPoint.forgotPassword),
        headers: header,
        body: jsonEncode(body));

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      if (data['status'] == true) {
        isLoading.value = false;
        return true;
      } else {
        Get.snackbar("Error", data['message']);
        isLoading.value = false;
        return false;
      }
    } else {
      Get.snackbar("Error", "Failed to reset password. Please try again.");
      isLoading.value = false;
      return false;
    }
  }

  forgotPasswordOtp() async {
    Map<String, String> header = {
      "Content-type": "application/json; charset=utf-8"
    };

    Map body = {
      "email": emailController.text.toString(),
      "otp": otpController.text.toString()
    };
    debugPrint(body.toString());

    http.Response response = await http.post(
      Uri.parse(ApiEndPoint.forgotPasswordOtp),
      headers: header,
      body: jsonEncode(body),
    );

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      if (data['status'] == true) {
        isLoading.value = false;
        return true;
      }
      Get.snackbar("Error", data['message']);
      isLoading.value = false;
    }
  }

  Future<bool> changePassword() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, String> header = {
      'Content-type': 'application/json; charset=utf-8'
    };
    debugPrint("hi");
    isLoading.value = true;

    Map body = {
      "email": emailController.text.toString(),
      "otp": otpController.text.toString(),
      "password": passwordController.text.toString()
    };
    debugPrint(body.toString());

    http.Response response = await http.post(
      Uri.parse(ApiEndPoint.changePassword),
      headers: header,
      body: jsonEncode(body),
    );

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      if (data['status'] == true) {
        debugPrint("hello");
        preferences.setString(ApiString.token, data['token']);
        preferences.setString(ApiString.id, data['data']['user_id']);
        preferences.setString(ApiString.email, data['data']['email'] ?? '');
        preferences.setString(ApiString.mobileNo, data['data']['mobile'] ?? '');
        Get.snackbar("Success", data['message']);
        isLoading.value = false;
        return true;
      }
      Get.snackbar("Error", data['message']);
      isLoading.value = false;
      return false;
    } else {
      return false;
    }
  }
}
