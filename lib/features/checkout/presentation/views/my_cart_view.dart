import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:svg_flutter/svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            AppIcons.arrowBack,
          ),
        ),
        title: const Text(
          'My Cart',
          style: TextStyle(),
        ),
      ),
    );
  }
}
