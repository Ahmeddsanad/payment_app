import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:payment_app/core/utils/constants.dart';
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
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 62,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return PaymentItem(
                    iconPath: paymentMethodsIcon[index],
                  );
                },
                itemCount: paymentMethodsIcon.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 28,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
