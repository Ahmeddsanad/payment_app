import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:svg_flutter/svg.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.iconPath,
  });

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          iconPath,
        ),
      ),
    );
  }
}
