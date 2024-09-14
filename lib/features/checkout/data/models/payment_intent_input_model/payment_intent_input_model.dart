class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
  });

  toJson() {
    var finalAmount = (int.parse(amount)) * 100;

    return {
      'amount': finalAmount,
      'currency': currency,
    };
  }
}
