class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customerId;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
    required this.customerId,
  });

  toJson() {
    var finalAmount = (int.parse(amount)) * 100;

    return {
      'amount': finalAmount,
      'currency': currency,
      'customer': customerId,
    };
  }
}
