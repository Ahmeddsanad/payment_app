import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_images.dart';
import 'package:svg_flutter/svg.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 18,
        ),
        Center(
          child: Image.asset(
            AppImages.cartImage,
          ),
        )
      ],
    );
  }
}
