import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_icons.dart';
import 'package:payment_app/core/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

AppBar buildAppBar({
  required final String title,
  BuildContext? context,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    leading: GestureDetector(
      onTap: () {
        Navigator.of(context!).pop();
      },
      child: Center(
        child: SvgPicture.asset(
          AppIcons.arrowBack,
          // height: 20,
        ),
      ),
    ),
    title: Text(
      title,
      style: styles.style25,
    ),
  );
}
