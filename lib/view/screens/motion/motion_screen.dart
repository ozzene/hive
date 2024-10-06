// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive/util/dimensiona.dart';
import 'package:hive/util/images.dart';

class MotionScreen extends StatefulWidget {
  const MotionScreen({super.key});

  @override
  State<MotionScreen> createState() => _MotionScreenState();
}

class _MotionScreenState extends State<MotionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeSmall,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Theme.of(context).highlightColor,
                          ),
                          child: SvgPicture.asset(
                            Images.arrowback,
                            width: 14,
                            height: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.paddingSizeDefault,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Motion Sensor",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeExtraLarge,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          SizedBox(
                            width: Get.width * 0.6,
                            child: Text(
                              "System unarmed, motion deactivated",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeSmall,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
           
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeExtraLarge,
              ),
              color: Colors.grey.withOpacity(0.5),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeLarge,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: SvgPicture.asset(
                      Images.personmotion,
                      width: 16,
                      height: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeSmall,
                  ),
                  Text(
                    "Disarmed",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: Dimensions.fontSizeExtraLarge,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraSmall,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault),
                    child: Text(
                      "Suitable for someone hone, zone attribute, general device will not trigger alarm",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.paddingSizeSmall,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                        Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeLarge,
                        ),
                        margin: EdgeInsets.only(
                            bottom: Dimensions.paddingSizeSmall,
                            left: Dimensions.paddingSizeSmall,
                            right: Dimensions.paddingSizeSmall),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusSmall),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context)
                                    .shadowColor
                                    .withOpacity(0.25),
                                offset: const Offset(3, 2),
                                spreadRadius: 5,
                                blurRadius: 10,
                              ),
                            ],
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Theme.of(context).highlightColor,
                                    ),
                                    child: SvgPicture.asset(
                                      Images.records,
                                      width: 14,
                                      height: 18,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeDefault,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Records",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF121212).withOpacity(0.7)
                                          ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                     
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeLarge,
                        ),
                        margin: EdgeInsets.only(
                            bottom: Dimensions.paddingSizeSmall,
                            left: Dimensions.paddingSizeSmall,
                            right: Dimensions.paddingSizeSmall),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusSmall),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context)
                                    .shadowColor
                                    .withOpacity(0.25),
                                offset: const Offset(3, 2),
                                spreadRadius: 5,
                                blurRadius: 10,
                              ),
                            ],
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Theme.of(context).highlightColor,
                                    ),
                                    child: SvgPicture.asset(
                                      Images.smartthings,
                                      width: 14,
                                      height: 18,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeDefault,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Automation",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF121212).withOpacity(0.7)
                                          ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                     
                     
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeLarge,
                        ),
                        margin: EdgeInsets.only(
                          bottom: Dimensions.paddingSizeSmall,
                          left: Dimensions.paddingSizeSmall,
                          right: Dimensions.paddingSizeSmall,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              Dimensions.radiusSmall,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context)
                                    .shadowColor
                                    .withOpacity(0.25),
                                offset: const Offset(
                                  3,
                                  2,
                              ),
                                spreadRadius: 5,
                                blurRadius: 10,
                              ),
                            ],
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Theme.of(context).highlightColor,
                                    ),
                                    child: SvgPicture.asset(
                                      Images.settings,
                                      width: 14,
                                      height: 18,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeDefault,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Settings",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF121212).withOpacity(0.7)
                                          ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final String icon;
}
