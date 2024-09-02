import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_arrow_back.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_check_icon.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/dashed_line_row.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/thank_you_card_widget.dart';
import 'package:svg_flutter/svg.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var DeviceHeight = MediaQuery.of(context).size.height;
    var DeviceWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 90.0,
            bottom: 32.0,
          ),
          child: Stack(
            children: [
              const ThankYouCard(),
              Positioned(
                bottom: DeviceHeight * 0.2 + 20,
                left: 28, // 20 (circle avatar radius) + 8
                right: 28, // 20 (circle avatar radius) + 8
                child: const DashedLineRow(),
              ),
              Positioned(
                bottom: DeviceHeight * 0.2,
                left: -20,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                bottom: DeviceHeight * 0.2,
                right: -20,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          height: DeviceHeight * 0.23,
          right: DeviceWidth * 0.359,
          child: const CustomCheckIcon(),
        ),
        Positioned(
          height: DeviceHeight * 0.15,
          right: DeviceWidth * 0.8,
          left: 0,
          child: const CustomArrowBack(),
        ),
      ],
    );
  }
}
