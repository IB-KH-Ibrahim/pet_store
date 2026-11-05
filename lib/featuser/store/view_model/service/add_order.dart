import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/api/api_string.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/store/model/order_model.dart';

class AddOrder {
  static Future<void> addOrder({required OrderModel order}) async {
    try {
      await ApiHttp.post(url: '${ApiString.baseUrl}${ApiString.addOrder}');
            showmessage('Pet addOrder successfully', Colors.green);
    } catch (e) {
      print('Error deleting pet: $e');
      showmessage('Error Added Order ', Colors.red);
    }
  }
}
