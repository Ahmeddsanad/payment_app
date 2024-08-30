import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:payment_app/core/utils/app_styles.dart';
import 'package:payment_app/core/utils/constants.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/my_cart_view_body.dart';
import 'package:svg_flutter/svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }
}
