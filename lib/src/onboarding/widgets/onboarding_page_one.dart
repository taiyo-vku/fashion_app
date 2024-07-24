import 'dart:io';

import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/utils/kstring.dart';
import 'package:fashion_app/constants/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Stack(
        children: [
          Image.asset(R.ASSETS_IMAGES_EXPERIENCE_PNG, fit: BoxFit.cover),
          Positioned(
            bottom: Platform.isAndroid ? 160 : 200,
            left: 30,
            right: 30,
            child: const Text(
              AppText.kOnboardHome,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 11,
                  color: Kolors.kGray,
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
