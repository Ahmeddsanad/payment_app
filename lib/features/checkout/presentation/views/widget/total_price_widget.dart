import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    super.key,
    required this.price,
  });

  final num price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Total',
          textAlign: TextAlign.center,
          style: styles.style24,
        ),
        const Spacer(),
        Text(
          '\$$price',
          style: styles.style24,
        ),
      ],
    );
  }
}
