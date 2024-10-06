// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive/util/dimensiona.dart';
import 'package:hive/util/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> roomCategory = [
    "All Devices",
    "Living Room",
    "Bedroom",
    "Outdoor",
    "Garage"
  ];
  
  int selectedRoomCategory = 0;
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
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Theme.of(context).highlightColor,
                        ),
                        child: SvgPicture.asset(
                          Images.mic,
                          width: 16,
                          height: 16,
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.paddingSizeDefault,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor,
                        ),
                        child: SvgPicture.asset(
                          Images.add,
                          width: 16,
                          height: 16,
                          color: Colors.white,
                        ),
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
                vertical: Dimensions.paddingSizeSmall,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width * 0.9,
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeDefault,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Dimensions.radiusLarge,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.grey.withOpacity(0.1),
                          Colors.grey.withOpacity(0.7),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color:
                                Theme.of(context).shadowColor.withOpacity(0.1),
                            offset: const Offset(3, 1),
                            spreadRadius: 5,
                            blurRadius: 10),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Weather",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: Dimensions.fontSizeSmall,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).disabledColor,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeExtraSmall,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 45,
                              height: 45,
                              child: SvgPicture.asset(
                                Images.sun,
                                width: 16,
                                height: 16,
                                color: const Color.fromARGB(255, 242, 177, 12),
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeDefault,
                            ),
                            Text(
                              "35°C",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeHeaders,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeExtraSmall,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Excellent",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.withOpacity(0.75),
                                      ),
                                ),
                                Text(
                                  "Outdoor PM2.5",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontSize: Dimensions.paddingSizeSmall,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.withOpacity(0.75),
                                      ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "46.0%",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.withOpacity(0.75),
                                      ),
                                ),
                                Text(
                                  "Outdoor Humidity",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontSize: Dimensions.paddingSizeSmall,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.withOpacity(0.75),
                                      ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1004hPa",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.withOpacity(0.75),
                                      ),
                                ),
                                Text(
                                  "Outdoor Air Pressure",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontSize: Dimensions.paddingSizeSmall,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.withOpacity(0.75),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeSmall,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: roomCategory
                      .asMap()
                      .entries
                      .map(
                        (e) => Padding(
                          padding: EdgeInsets.only(
                              right: Dimensions.paddingSizeDefault),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedRoomCategory = e.key;
                              });
                            },
                            child: Text(
                              e.value,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: selectedRoomCategory == e.key
                                        ? FontWeight.w900
                                        : FontWeight.w500,
                                    color: selectedRoomCategory == e.key
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.paddingSizeDefault,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: ["", "", "", "", ""]
                      .asMap()
                      .entries
                      .map(
                        (e) => Container(
                          margin: EdgeInsets.only(
                            bottom: Dimensions.paddingSizeDefault,
                            left: Dimensions.paddingSizeDefault,
                            right: Dimensions.paddingSizeDefault,
                          ),
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
                                    .withOpacity(0.25),
                                offset: const Offset(3, 2),
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
                                  width: 40,
                                  height: 40,
                                  child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: SvgPicture.asset(
                                      Images.bulb,
                                      width: 14,
                                      height: 18,
                                      color: Theme.of(context).disabledColor,
                                    ),
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
                                      "Test bulb 1",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeExtraLarge,
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "OFF",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeSmall,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color(0xFF121212)
                                                      .withOpacity(0.5)),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.paddingSizeExtraSmall,
                                        ),
                                        SizedBox(
                                          width: 12,
                                          height: 12,
                                          child: SvgPicture.asset(
                                            Images.brightness,
                                            color:
                                                Theme.of(context).disabledColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.paddingSizeExtraSmall,
                                        ),
                                        Text(
                                          "100",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeSmall,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color(0xFF121212)
                                                      .withOpacity(0.5)),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.paddingSizeExtraSmall,
                                        ),
                                        SizedBox(
                                          width: 12,
                                          height: 12,
                                          child: SvgPicture.asset(
                                            Images.power,
                                            color:
                                                Theme.of(context).disabledColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.paddingSizeExtraSmall,
                                        ),
                                        Text(
                                          "100",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeSmall,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color(0xFF121212)
                                                      .withOpacity(0.5)),
                                        ),
                                        SizedBox(
                                          width:
                                              Dimensions.paddingSizeExtraSmall,
                                        ),
                                        SizedBox(
                                          width: 12,
                                          height: 12,
                                          child: SvgPicture.asset(
                                            Images.time,
                                            color:
                                                Theme.of(context).disabledColor,
                                          ),
                                        ),
                                        Text(
                                          "0s",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeSmall,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color(0xFF121212)
                                                      .withOpacity(0.5)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.paddingSizeDefault,
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                child: SvgPicture.asset(
                                  Images.start,
                                  width: 16,
                                  height: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
