import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:svg_flutter/svg.dart';

class PaymentItem extends StatelessWidget {
  PaymentItem({
    super.key,
    required this.iconPath,
    this.isActive = false,
  });

  final String iconPath;
  late bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 104,
      height: 62,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: isActive ? const Color(0xff34a853) : const Color(0xff8c8c8c),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xff34a853) : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          iconPath,
          // height: 24,
          // fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
