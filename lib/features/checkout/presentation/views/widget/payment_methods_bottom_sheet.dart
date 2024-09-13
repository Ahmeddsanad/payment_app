import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_elevated_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_elevated_button_bloc_consumer.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_methods_List_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(
            paymentMethodsIcon: [
              AppIcons.creditCard,
              AppIcons.payPal,
            ],
          ),
          SizedBox(
            height: 32,
          ),
          CustomElevatedButtomBlocConsumer()
        ],
      ),
    );
  }
}
