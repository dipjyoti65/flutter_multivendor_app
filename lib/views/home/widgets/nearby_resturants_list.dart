import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_app/constants/uidata.dart';
import 'package:multi_vendor_app/views/home/widgets/resturant_widget.dart';

class NearbyResturants extends StatelessWidget {
  const NearbyResturants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var resturant = restaurants[i];
          return ResturantWidget(
              image: resturant['imageUrl'],
              logo: resturant['logoUrl'],
              title: resturant['title'],
              time: resturant['time'],
              rating: resturant['ratingCount']);
        }),
      ),
    );
  }
}
