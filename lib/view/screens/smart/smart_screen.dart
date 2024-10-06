// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive/util/dimensiona.dart';
import 'package:hive/util/images.dart';

class SmartScreen extends StatefulWidget {
  const SmartScreen({super.key});

  @override
  State<SmartScreen> createState() => _SmartScreenState();
}

class _SmartScreenState extends State<SmartScreen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Theme.of(context).highlightColor,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Theme.of(context).highlightColor,
                        ),
                        child: SvgPicture.asset(
                          Images.clipboard,
                          width: 14,
                          height: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
              child: Column(
                children: [""]
                    .asMap()
                    .entries
                    .map(
                      (e) => Container(
                        padding: EdgeInsets.all(
                          Dimensions.paddingSizeDefault,
                        ),
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Dimensions.radiusDefault,
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .shadowColor
                                  .withOpacity(0.2),
                              offset: const Offset(3, 1),
                              spreadRadius: 5,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: SvgPicture.asset(
                                        Images.shield,
                                        width: 14,
                                        height: 18,
                                        color: Colors.blue.withOpacity(0.25),
                                      ),
                                    ),
                                    Positioned(
                                      child: Stack(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 5.5, top: 5.5),
                                            width: 40,
                                            height: 40,
                                            child: ClipRRect(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 30.0, sigmaY: 30.0),
                                                child: SvgPicture.asset(
                                                  Images.shield,
                                                  width: 40,
                                                  height: 40,
                                                  color: Colors.blue
                                                      .withOpacity(0.75),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: SvgPicture.asset(
                                        Images.shield,
                                        width: 14,
                                        height: 18,
                                        color: Colors.blue.withOpacity(0.25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeDefault,
                            ),
                            Expanded(
                              flex: 8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Smart Protect",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                  Text(
                                    "Home alarm application, survellance, guarding your home security",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                            fontSize: Dimensions.fontSizeSmall,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF121212)
                                                .withOpacity(0.5)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeDefault,
                            ),
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: SvgPicture.asset(
                                Images.arrowforward,
                                width: 14,
                                height: 18,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                   
                    )
                    .toList(),
              ),
            )
         
         
          ],
        ),
      ),
    );
  }
}
