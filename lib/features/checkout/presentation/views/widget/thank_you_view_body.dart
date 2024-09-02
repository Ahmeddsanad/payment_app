import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
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
            left: 32.0,
            right: 32.0,
            top: 90.0,
            bottom: 32.0,
          ),
          child: Stack(
            children: [
              Container(
                width: 350,
                height: 672,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Positioned(
                bottom: DeviceHeight * 0.2 + 20,
                left: 28, // 20 (circle avatar radius) + 8
                right: 28, // 20 (circle avatar radius) + 8
                child: Row(
                  children: List.generate(
                      30,
                      (index) => Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: Container(
                                color: const Color(0xFFB8B8B8),
                                height: 2,
                                width: 2,
                              ),
                            ),
                          )),
                ),
              ),
              Positioned(
                bottom: DeviceHeight * 0.2,
                left: -20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                bottom: DeviceHeight * 0.2,
                right: -20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          height: DeviceHeight * 0.23,
          right: DeviceWidth * 0.359,
          child: const CircleAvatar(
            radius: 55,
            backgroundColor: Color(0xFFD9D9D9),
            child: CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(
                AppIcons.check2,
              ),
            ),
          ),
        ),
        Positioned(
          height: DeviceHeight * 0.15,
          right: DeviceWidth * 0.8,
          left: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Center(
              child: SvgPicture.asset(
                AppIcons.arrowBack,
                // height: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
