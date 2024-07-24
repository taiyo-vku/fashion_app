import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/constants/resource.dart';
import 'package:flutter/material.dart';

// TODO : kGradient
LinearGradient kGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
    Kolors.kPrimary,
  ],
);

// TODO : kPGradient
LinearGradient kPGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kPrimaryLight.withOpacity(0.7),
    Kolors.kPrimary,
  ],
);

// TODO : kBtnGradient
LinearGradient kBtnradient = const LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
  ],
);

// TODO : kRadiusAll
BorderRadiusGeometry kRadiusAll = BorderRadius.circular(12);

// TODO : kRadiusTop
BorderRadiusGeometry kRadiusTop = const BorderRadius.only(
  bottomLeft: Radius.circular(9),
  bottomRight: Radius.circular(12),
);

// TODO : kRadiusBottom
BorderRadiusGeometry kRadiusBottom = const BorderRadius.only(
  bottomLeft: Radius.circular(12),
  bottomRight: Radius.circular(12),
);

// TODO :  Widget Function : placeholder
Widget Function(BuildContext, String)? placeholder = (p0, p1) => Image.asset(
      R.ASSETS_IMAGES_PLACEHOLDER_PNG,
      fit: BoxFit.cover,
    );

// TODO :  Widget Function : errorWidget
Widget Function(BuildContext, String, Object)? errorWidget =
    (p0, p1, p2) => Image.asset(
          R.ASSETS_IMAGES_PLACEHOLDER_PNG,
          fit: BoxFit.cover,
        );
