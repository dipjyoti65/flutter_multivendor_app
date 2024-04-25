import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_app/common/custom_appbar.dart';
import 'package:multi_vendor_app/common/custom_container.dart';
import 'package:multi_vendor_app/common/heading.dart';
import 'package:multi_vendor_app/constants/constants.dart';
import 'package:multi_vendor_app/views/home/all_fastest_food_page.dart';
import 'package:multi_vendor_app/views/home/all_nearby_resturants.dart';
import 'package:multi_vendor_app/views/home/widgets/category_list.dart';
import 'package:multi_vendor_app/views/home/widgets/food_list.dart';
import 'package:multi_vendor_app/views/home/widgets/nearby_resturants_list.dart';
import 'package:multi_vendor_app/views/home/widgets/recomendation_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.h),
      child: Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h), child: const CustomAppBar()),
        // preferredSize: Size.fromHeight(130.h),child: Container(height: 130,),),
        body: SafeArea(
          child: CustomContainer(
              containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: "Nearby Resturants",
                onTap: () {
                  Get.to(() =>const AllNearbyResturants(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                },
              ),
              const NearbyResturants(),
              Heading(
                text: "Try Something New",
                onTap: () {
                  Get.to(() => const RecomendationsPage(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                },
              ),
              const FoodsList(),
              Heading(
                text: "Food closer to you",
                onTap: () {
                  Get.to(() =>const AllFastestFoods(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                },
              ),
              const FoodsList(),
            ],
          )),
        ),
      ),
    );
  }
}
