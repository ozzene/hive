import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/util/dimensiona.dart';
import 'package:hive/util/images.dart';

class CustomAppBarWidget extends StatefulWidget {
  final String? title;
  final bool isProfile;
  final bool isBack;

  const CustomAppBarWidget({super.key, required this.title, this.isProfile = false,this.isBack=false});
  @override
  State<CustomAppBarWidget> createState() => _CustomAppBarWidgetState();
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.paddingSizeDefault,
        vertical: Dimensions.paddingSizeSmall,
      ),
      margin: EdgeInsets.only(bottom: Dimensions.paddingSizeDefault),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child:widget.isBack ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).hintColor,
              ),
            ):Container()
          ),
          Text(
            widget.title!,
            style: TextStyle(
              fontSize: Dimensions.fontSizeOverLarge,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          widget.isProfile
              ? Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radiusDefault),
                      ),
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radiusDefault),
                          child: Image.asset(
                            Images.profile,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Positioned(
                        child: SizedBox(
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Center(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 8, bottom: 8),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                )
              : const SizedBox(
                  width: 50,
                  height: 50,
                )
        ],
      ),
    );
  }
}
