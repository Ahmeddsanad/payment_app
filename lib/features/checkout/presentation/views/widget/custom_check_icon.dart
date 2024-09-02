import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 55,
      backgroundColor: Color(0xFFededed),
      child: CircleAvatar(
        radius: 45,
        backgroundImage: AssetImage(
          AppIcons.check2,
        ),
      ),
    );
  }
}
