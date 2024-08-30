import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_item.dart';

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
        SizedBox(
          height: 62,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PaymentItem(
                iconPath: paymentMethodsIcon[index],
                isActive: false,
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
    );
  }
}
