import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 672,
            decoration: ShapeDecoration(
              color: Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: -20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            right: -20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
