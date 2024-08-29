import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({
    super.key,
    required this.label,
    required this.price,
  });

  final String label;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: styles.style18,
        ),
        const Spacer(),
        Text(
          '\$$price',
          style: styles.style18,
        ),
      ],
    );
  }
}
