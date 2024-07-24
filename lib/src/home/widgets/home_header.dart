import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/utils/kstring.dart';
import 'package:fashion_app/common/widgets/app_style.dart';
import 'package:fashion_app/common/widgets/reusable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(
          text: AppText.kCategories,
          style: appStyle(13, Kolors.kDark, FontWeight.w600),
        ),
        GestureDetector(
          onTap: () {
            context.push('/categories');
          },
          child: ReusableText(
            text: AppText.kViewAll,
            style: appStyle(13, Kolors.kGray, FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
