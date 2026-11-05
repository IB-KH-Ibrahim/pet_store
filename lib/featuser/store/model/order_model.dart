
import 'package:pet/featuser/store/model/order_parameters.dart';

class OrderModel {
final OrderParameters parameters;

  OrderModel({
    required this.parameters,
  });
  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      parameters: OrderParameters.fromJson(json),
    );
  }

}

