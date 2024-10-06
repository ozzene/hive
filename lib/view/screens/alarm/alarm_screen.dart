// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive/util/dimensiona.dart';
import 'package:hive/util/images.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key});

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  @override
  Widget build(BuildContext context) {
    const List<Choice> choices = <Choice>[
      Choice(title: 'Disarmed', icon: Images.unlocked),
      Choice(title: 'Away', icon: Images.shield),
      Choice(title: 'Home', icon: Images.home),
      Choice(title: 'SOS', icon: Images.sos),
    ];
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
                            "Device Mode",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeExtraLarge,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          Text(
                            "System Disarmed! Arm your system to keep yourself safe.",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeSmall,
                                  fontWeight: FontWeight.w400,
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
                      Images.unlocked,
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
            Container(
              height: Get.height * 0.3,
              width: Get.width,
              padding: const EdgeInsets.all(2),
              color: Theme.of(context).highlightColor,
              child: GridView.count(
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 2.0,
                childAspectRatio: 1.55,
                children: List.generate(
                  choices.length,
                  (index) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Theme.of(context).highlightColor,
                            ),
                            child: SvgPicture.asset(
                              choices[index].icon,
                              width: 14,
                              height: 18,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            choices[index].title,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  },
                ),
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
                        padding: EdgeInsets.all(
                          Dimensions.paddingSizeDefault,
                        ),
                        margin: EdgeInsets.only(
                          bottom: Dimensions.paddingSizeSmall,
                          left: Dimensions.paddingSizeSmall,
                          right: Dimensions.paddingSizeSmall
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusSmall),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Theme.of(context).shadowColor.withOpacity(0.25),
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
                                  onTap: () {
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Theme.of(context).highlightColor,
                                    ),
                                    child: SvgPicture.asset(
                                      Images.notifications,
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
                                      "History records",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      "2024-10-06 14:56 Disarmed",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                              fontSize: Dimensions.fontSizeSmall,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red),
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
                        horizontal:  Dimensions.paddingSizeDefault,
                          vertical:  Dimensions.paddingSizeLarge,
                        ),
                        margin: EdgeInsets.only(
                          bottom: Dimensions.paddingSizeSmall,
                          left: Dimensions.paddingSizeSmall,
                          right: Dimensions.paddingSizeSmall
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusSmall),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Theme.of(context).shadowColor.withOpacity(0.25),
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
                                  onTap: () {
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Theme.of(context).highlightColor,
                                    ),
                                    child: SvgPicture.asset(
                                      Images.shield,
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
                                      "Accessories",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w500,
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
                        horizontal:  Dimensions.paddingSizeDefault,
                          vertical:  Dimensions.paddingSizeLarge,
                        ),
                        margin: EdgeInsets.only(
                          bottom: Dimensions.paddingSizeSmall,
                          left: Dimensions.paddingSizeSmall,
                          right: Dimensions.paddingSizeSmall
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusSmall),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Theme.of(context).shadowColor.withOpacity(0.25),
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
                                  onTap: () {
                                  },
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
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.w500,
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
