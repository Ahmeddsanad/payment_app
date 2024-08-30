import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/constants.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details', context: context),
    );
  }
}
