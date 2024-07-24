import 'package:fashion_app/common/widgets/login_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../common/services/storage.dart';
import '../../../common/utils/kcolors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (Storage().getString('accessToken') == null) {
          loginBottomSheet(context);
        } else {
          context.push('/notifications');
        }
      },
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: const CircleAvatar(
          child: Badge(
            label: Text('4'),
            child: Icon(
              Icons.notification_add,
              color: Kolors.kPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
