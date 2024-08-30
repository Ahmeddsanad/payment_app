import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_item.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_methods_List_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({
    super.key,
    required this.paymentMethodsIcon,
  });

  final List<String> paymentMethodsIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        PaymentMethodsListView(paymentMethodsIcon: paymentMethodsIcon)
      ],
    );
  }
}
