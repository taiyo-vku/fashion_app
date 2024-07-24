import 'dart:io';

import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/src/cart/views/cart_screen.dart';
import 'package:fashion_app/src/entrypoint/controllers/bottom_tab_notifier.dart';
import 'package:fashion_app/src/home/views/home_screen.dart';
import 'package:fashion_app/src/profile/views/profile_screen.dart';
import 'package:fashion_app/src/wishlist/views/wishlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class AppEntryPoint extends StatelessWidget {
  AppEntryPoint({super.key});

  List<Widget> pageList = [
    const HomePage(),
    const WishlistPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  var platform = Platform.isAndroid;

  @override
  Widget build(BuildContext context) {
    return Consumer<TabIndexNotifier>(
        builder: (context, tabIndexNotifier, child) {
      return Scaffold(
        body: Stack(
          children: [
            pageList[tabIndexNotifier.index],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  data:
                      Theme.of(context).copyWith(canvasColor: Kolors.kOffWhite),
                  child: BottomNavigationBar(
                    selectedFontSize: 12,
                    elevation: 0,
                    backgroundColor: Kolors.kOffWhite,
                    showSelectedLabels: true,
                    showUnselectedLabels: false,
                    currentIndex: tabIndexNotifier.index,
                    selectedItemColor: Kolors.kPrimary,
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black38),
                    onTap: (i) {
                      tabIndexNotifier.setIndex(i);
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: tabIndexNotifier.index == 0
                              ? Icon(platform ? AntDesign.home : Iconsax.home,
                                  color: Kolors.kPrimary, size: 24)
                              : Icon(
                                  platform ? AntDesign.home : Iconsax.home,
                                ),
                          label: 'Home'),
                      BottomNavigationBarItem(
                          icon: tabIndexNotifier.index == 1
                              ? Icon(platform ? Ionicons.heart : Iconsax.heart,
                                  color: Kolors.kPrimary, size: 24)
                              : Icon(
                                  platform
                                      ? Ionicons.heart_outline
                                      : Iconsax.heart,
                                ),
                          label: 'Wishlist'),
                      BottomNavigationBarItem(
                          icon: tabIndexNotifier.index == 2
                              ? Badge(
                                  label: const Text('9'),
                                  child: Icon(
                                      platform
                                          ? MaterialCommunityIcons.shopping
                                          : Iconsax.shop,
                                      color: Kolors.kPrimary,
                                      size: 24),
                                )
                              : Badge(
                                  label: const Text('9'),
                                  child: Icon(
                                    platform
                                        ? MaterialCommunityIcons.shopping
                                        : Iconsax.shop,
                                  ),
                                ),
                          label: 'Cart'),
                      BottomNavigationBarItem(
                          icon: tabIndexNotifier.index == 3
                              ? Icon(platform ? EvilIcons.user : Iconsax.user,
                                  color: Kolors.kPrimary, size: 24)
                              : Icon(
                                  platform ? EvilIcons.user : Iconsax.user,
                                ),
                          label: 'Person'),
                    ],
                  )),
            )
          ],
        ),
      );
    });
  }
}
