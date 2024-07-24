import 'dart:io';

import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/utils/kstring.dart';
import 'package:fashion_app/common/widgets/app_style.dart';
import 'package:fashion_app/common/widgets/reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../common/widgets/custom_button.dart';
import '../../../constants/resource.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Column(
        children: [
          SizedBox(height: 100.h),
          Image.asset(R.ASSETS_IMAGES_GET_STARTED_PNG),
          SizedBox(height: 30.h),
          const Text(
            AppText.kWelcomeHeader,
            style: TextStyle(
                fontSize: 24,
                color: Kolors.kPrimary,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: ScreenUtil().screenWidth - 100,
            child: const Text(
              AppText.kWelcomeMessage,
              style: TextStyle(
                  fontSize: 11,
                  color: Kolors.kGray,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: 20.h),
          GradientBtn(
            text: AppText.kGetStarted,
            onTap: () {
              /// TODO : uncomment the bool storage when the app is ready

              context.go('/home');
            },
            btnHieght: 35,
            radius: 20,
            btnWidth: ScreenUtil().screenWidth - 100,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableText(
                  text: 'Already have an account?',
                  style: appStyle(12, Kolors.kDark, FontWeight.normal)),
              TextButton(
                  onPressed: () {
                    // TODO : Navigate to login page
                    context.go('/login');
                  },
                  child: const Text('Sign In',
                      style: TextStyle(fontSize: 12, color: Colors.blue))),
            ],
          ),
        ],
      ),
    );
  }
}
