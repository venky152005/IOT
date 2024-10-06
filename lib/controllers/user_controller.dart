import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:iot_application/constants/api_string.dart';
import 'package:iot_application/constants/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final oldPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RxBool isLoading = false.obs;

  Future<bool> updateProfile() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token = preferences.getString(ApiString.token);
    Map<String, String> header = {
      'Authorization': token!,
      'Content-type': 'application/json; charset=utf-8'
    };

    Map<String, String> body = {
      "name": nameController.text.toString(),
      "mobile": mobileController.text.toString(),
      "email": emailController.text.toString(),
    };

    http.Response response = await http.post(
      Uri.parse(ApiEndPoint.updateProfile),
      headers: header,
      body: jsonEncode(body),
    );

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      if (data['status'] == true) {
        // preferences.setString(ApiString.token, data['token']);
        // preferences.setString(ApiString.id, data['data']['user_id']);
        // preferences.setString(ApiString.email, data['data']['email'] ?? '');
        // preferences.setString(ApiString.mobileNo, data['data']['mobile'] ?? '');
        Get.snackbar("Success", data['message'],
            backgroundColor: const Color(0xFFFFFFFF), colorText: Colors.black);
        isLoading.value = false;
        return true;
      } else {
        Get.snackbar("Error", data['message'] ?? 'Server Error');
        isLoading.value = false;
        return false;
      }
    }
    return false;
  }

  changePasswordSettings() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token = preferences.getString(ApiString.token);
    Map<String, String> header = {
      'Authorization': token!,
      'Content-type': 'application/json; charset=utf-8'
    };
    isLoading.value = true;
    debugPrint(header.toString());

    Map body = {
      "password": passwordController.text.toString(),
      "old-password": oldPasswordController.text.toString(),
    };
    debugPrint(body.toString());

    http.Response response = await http.post(
      Uri.parse(ApiEndPoint.changePasswordSettings),
      headers: header,
      body: jsonEncode(body),
    );

    var data = jsonDecode(response.body);
    debugPrint(response.body);
    if (response.statusCode == 200) {
      if (data['status'] == true) {
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

  Future<bool> logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool result = await preferences.clear();
    return result;
  }
}
