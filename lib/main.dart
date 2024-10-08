import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.kPublishKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

// to save customer data
// createpaymentIntent(amount, currency, customerId)
// KeySecret createEphemeralKey(CustomerId)
// initpaymentSheet(setupPaymentSheetParameters--> merchantDisplayName, intentClientSecret, ephemeralKeySecret)
// presentPaymentSheet()
