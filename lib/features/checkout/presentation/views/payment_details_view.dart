import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:payment_app/core/utils/constants.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_details_view_body.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_item.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> paymentMethodsIcon = [
      AppIcons.creditCard,
      AppIcons.payPal,
      AppIcons.applePay,
    ];

    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: PaymentDetailsViewBody(paymentMethodsIcon: paymentMethodsIcon),
      ),
    );
  }
}
