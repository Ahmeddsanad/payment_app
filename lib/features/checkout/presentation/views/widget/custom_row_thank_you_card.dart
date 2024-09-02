import 'package:flutter/material.dart';

class CustomRowThankYouCard extends StatelessWidget {
  const CustomRowThankYouCard({
    super.key,
    required this.title,
    required this.titleValue,
  });

  final String title;
  final String titleValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        const Spacer(),
        Text(
          titleValue,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        )
      ],
    );
  }
}
