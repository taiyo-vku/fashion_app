import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/utils/kcolors.dart';
import '../../../common/utils/kstring.dart';
import '../../../constants/resource.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Stack(
        children: [
          Image.asset(R.ASSETS_IMAGES_WISHLIST_PNG, fit: BoxFit.cover),
          Positioned(
            bottom: Platform.isAndroid ? 160 : 200,
            left: 30,
            right: 30,
            child: const Text(
              AppText.kOnboardWishListMessage,
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
