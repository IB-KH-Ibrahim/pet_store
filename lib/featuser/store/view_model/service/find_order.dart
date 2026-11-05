import 'package:flutter/material.dart';
import 'package:pet/core/api/api_http.dart';
import 'package:pet/core/widget/showmessage.dart';
import 'package:pet/featuser/store/model/order_model.dart';

import '../../../../core/api/api_string.dart';

class FindOrder{
    static Future<OrderModel?> fiendOrder(String id) async {
    try {
      final response = await ApiHttp.get(
        url: '${ApiString.baseUrl}${ApiString.stor}?id=$id',
      );
      showmessage('Found Order', Color.fromARGB(255, 41, 197, 39));
      return OrderModel.fromJson(response);
    } catch (e) {
      print('Failed to send data with status code: $e');
      showmessage('Error error', Colors.red);
    }
    return null;
  }

  
}