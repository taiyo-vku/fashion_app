import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/utils/kstring.dart';
import 'package:fashion_app/common/widgets/app_style.dart';
import 'package:fashion_app/common/widgets/reusable.dart';
import 'package:fashion_app/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadiusAll,
      child: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: ImageSlideshow(
              autoPlayInterval: 3000,
              isLoop: true,
              indicatorColor: Kolors.kPrimary,
              onPageChanged: (p) {},
              children: List.generate(images.length, (i) {
                return CachedNetworkImage(
                  placeholder: placeholder,
                  errorWidget: errorWidget,
                  imageUrl: images[i],
                  fit: BoxFit.cover,
                );
              }),
            ),
          ),
          Positioned(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight * 0.16,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    text: AppText.kCollection,
                    style: appStyle(20, Kolors.kDark, FontWeight.w600),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Discount 50% off \nthe firest transaction.',
                    style: appStyle(
                        14, Kolors.kDark.withOpacity(0.5), FontWeight.normal),
                  ),

                  SizedBox(height: 10.h),

                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> images = [
  'https://d326fnlu7tbe.cloudfront.net/uploads/1.webp',
  '',
  '',
];
