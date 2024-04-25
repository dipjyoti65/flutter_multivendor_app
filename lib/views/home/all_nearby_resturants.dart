import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_app/common/app_style.dart';
import 'package:multi_vendor_app/common/reusable_text.dart';
import 'package:multi_vendor_app/constants/constants.dart';
import 'package:multi_vendor_app/constants/uidata.dart';
import 'package:multi_vendor_app/views/categories/back_ground_container.dart';
import 'package:multi_vendor_app/views/home/widgets/restaurant_tile.dart';

class AllNearbyResturants extends StatelessWidget {
  const AllNearbyResturants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        title: ReusableText(text: "Nearby Resturants",
        style: appStyle(13, kLightWhite, FontWeight.w600),),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 12.h),
          child: ListView(
            children: List.generate(restaurants.length, (i) {
              var restaurant = restaurants[i];
              return RestaurantTile(restaurant: restaurant);
            }),
          ),
        ),
      ),
    );
  }
}
