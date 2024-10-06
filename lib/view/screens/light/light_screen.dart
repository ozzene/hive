// ignore_for_file: deprecated_member_use

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive/util/dimensiona.dart';
import 'package:hive/util/images.dart';
import 'package:hive/view/widgets/custom_switch.dart';

class LightScreen extends StatefulWidget {
  const LightScreen({super.key});

  @override
  State<LightScreen> createState() => _LightScreenState();
}

class _LightScreenState extends State<LightScreen> {
  int selectedRoomCategory = 0;
  bool isLightOn = true;

  @override
  Widget build(BuildContext context) {
    List<String> roomCategory = [
      "Living Room",
      "Bedroom",
      "Outdoor",
    ];

    return Scaffold(
      body: Container(
        color: !isLightOn ? const Color(0xFF161130) : Colors.white,
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            "Lighting",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontSize: Dimensions.fontSizeExtraLarge,
                                  fontWeight: FontWeight.w700,
                                  color: !isLightOn
                                      ? const Color(0xFF79889e)
                                      : const Color(0xFF121212),
                                ),
                          ),
                          SizedBox(
                            width: Get.width * 0.6,
                            child: Text(
                              "System online",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontSize: Dimensions.fontSizeSmall,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromARGB(255, 76, 175, 80),
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
            SizedBox(
              height: Dimensions.paddingSizeExtraLarge,
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeSmall,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Temperature",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.w400,
                        color: !isLightOn
                            ? const Color(0xFF79889e)
                            : const Color(0xFF121212)),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "27°",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: Dimensions.fontSizeHeaders,
                            fontWeight: FontWeight.w500,
                            color: !isLightOn
                                ? const Color(0xFF79889e)
                                : const Color(0xFF121212)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          "C",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeExtraLarge,
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeSmall,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: isLightOn
                          ? LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFFF2B10C).withOpacity(0.5),
                                const Color(0xFFF2B10C),
                                const Color.fromARGB(255, 238, 100, 58),
                                Colors.pink,
                              ],
                            )
                          : LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF362d66).withOpacity(0.25),
                                const Color(0xFF362d66),
                                const Color(0xFF161130).withOpacity(0.75),
                                const Color(0xFF161130),
                              ],
                            ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: !isLightOn
                                ? const Color(0xFF1c1929)
                                : Colors.white,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              DottedBorder(
                                padding: const EdgeInsets.all(5),
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(150),
                                strokeWidth: 2,
                                dashPattern: [2],
                                color: !isLightOn
                                    ? const Color(0xFF79889e)
                                    : Theme.of(context).primaryColor,
                                child: Container(
                                  padding: EdgeInsets.all(
                                      Dimensions.paddingSizeLarge),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: !isLightOn
                                        ? const Color(0xFF1c1929)
                                        : Colors.white,
                                    boxShadow: [
                                      isLightOn
                                          ? BoxShadow(
                                              color: Theme.of(context)
                                                  .shadowColor
                                                  .withOpacity(0.75),
                                              spreadRadius: 5,
                                              blurRadius: 10,
                                              offset: const Offset(0, 2))
                                          : const BoxShadow(
                                              color: Color(0xFF1c1929),
                                              spreadRadius: 5,
                                              blurRadius: 10,
                                              offset: Offset(0, 2))
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(
                                            Dimensions.paddingSizeLarge),
                                        width: 150,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: !isLightOn
                                              ? const Color(0xFF211b31)
                                              : Colors.white,
                                          boxShadow: [
                                            isLightOn
                                                ? BoxShadow(
                                                    color: Theme.of(context)
                                                        .shadowColor
                                                        .withOpacity(0.5),
                                                    spreadRadius: 10,
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 10))
                                                : const BoxShadow(
                                                    color: Colors.transparent,
                                                    spreadRadius: 10,
                                                    blurRadius: 10,
                                                    offset: Offset(0, 10))
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 60,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: SvgPicture.asset(
                                                isLightOn
                                                    ? Images.bulbon
                                                    : Images.bulboff,
                                                width: 14,
                                                height: 18,
                                                color: isLightOn
                                                    ? const Color(0xFFF2B10C)
                                                    : const Color(0xFF46415d),
                                              ),
                                            ),
                                            Text(
                                              isLightOn
                                                  ? "Lights On"
                                                  : "Lights Off",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall
                                                  ?.copyWith(
                                                    fontSize: Dimensions
                                                        .fontSizeLarge,
                                                    fontWeight: FontWeight.w400,
                                                    color: isLightOn
                                                        ? const Color(
                                                            0xFF121212)
                                                        : Colors.grey,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeLarge,
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault,
                vertical: Dimensions.paddingSizeSmall,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: roomCategory
                    .asMap()
                    .entries
                    .map(
                      (e) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
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
                            style: isLightOn
                                ? Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      fontWeight: selectedRoomCategory == e.key
                                          ? FontWeight.w400
                                          : FontWeight.w400,
                                      color: selectedRoomCategory == e.key
                                          ? Colors.black
                                          : Colors.grey,
                                      fontSize: selectedRoomCategory == e.key
                                          ? Dimensions.fontSizeOverLarge
                                          : Dimensions.fontSizeSmall,
                                    )
                                : Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      fontWeight: selectedRoomCategory == e.key
                                          ? FontWeight.w400
                                          : FontWeight.w400,
                                      color: selectedRoomCategory == e.key
                                          ? Colors.grey
                                          : Colors.grey.withOpacity(0.5),
                                      fontSize: selectedRoomCategory == e.key
                                          ? Dimensions.fontSizeOverLarge
                                          : Dimensions.fontSizeSmall,
                                    ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeExtraLarge,
            ),
            CustomSwitch(
              activeColor: Colors.blue,
              backgroundColor: Colors.grey,
              width: 100.0,
              height: 50.0,
              padding: const EdgeInsets.all(4.0),
              value: false,
              onChanged: (bool val) {
                setState(() {
                  isLightOn = val;
                });
              },
            ),
            SizedBox(
              height: Dimensions.paddingSizeExtraLarge,
            ),
          ],
        )),
      ),
    );
  }
}
