import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:payment_app/core/utils/app_styles.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/my_cart_view_body.dart';
import 'package:svg_flutter/svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Center(
          child: SvgPicture.asset(
            AppIcons.arrowBack,
            // height: 20,
          ),
        ),
        title: const Text(
          'My Cart',
          style: styles.style25,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
