import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/constants/api_string.dart';
import 'package:iot_application/constants/app_string.dart';
import 'package:iot_application/models/device.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class DeviceController extends GetxController {
  RxList<DeviceModel> devicesList = <DeviceModel>[].obs;

  Rx<DeviceModel> deviceView = DeviceModel().obs;

  deviceList() async {
    devicesList.clear();

    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token = preferences.getString(ApiString.token);
    Map<String, String> header = {
      'authorization': token!,
      'Content-type': 'application/json'
    };

    http.Response response =
        await http.post(Uri.parse(ApiEndPoint.deviceList), headers: header);

    var data = jsonDecode(response.body);
    debugPrint(response.body);
    if (response.statusCode == 200) {
      if (data['status'] == true) {
        for (Map<String, dynamic> device in data['data']) {
          devicesList.add(DeviceModel.fromJson(device));
        }
      }
    }
  }

  getDeviceView(String id) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token = preferences.getString(ApiString.token);
    Map<String, String> header = {
      'authorization': token!,
      'Content-type': 'application/json'
    };

    Map<String, String> body = {
      'id': id,
    };

    http.Response response = await http.post(
      Uri.parse(ApiEndPoint.deviceView),
      headers: header,
      body: jsonEncode(body),
    );

    var data = jsonDecode(response.body);
    debugPrint(data['data'].toString());
    if (response.statusCode == 200) {
      if (data['status'] == true) {
        if (data['data'] != null) {
          deviceView.value = DeviceModel.fromJson(data['data']);
        } else {
          Get.snackbar("Error", data['message'] ?? 'Server Error');
        }
      }
    }
  }
}
