class OrderParameters {
  final int petId;
  final int quantity;
  final int id;
  final String shipDate;
  final bool complete;
  final String status;

  OrderParameters({
    required this.petId,
    required this.quantity,
    required this.id,
    required this.shipDate,
    required this.complete,
    required this.status,
  });
  factory OrderParameters.fromJson(Map<String, dynamic> json) {
    return OrderParameters(
      petId: json['petId'],
      quantity: json['quantity'],
      id: json['id'],
      shipDate: json['shipDate'],
      complete:json['complete'],
      status: json['status'],
    );
  }
}
