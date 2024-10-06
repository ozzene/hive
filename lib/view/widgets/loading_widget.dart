import 'package:flutter/material.dart';
import 'package:hive/util/dimensiona.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      body: Container(
       
        decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              Dimensions.radiusSmall,
            ),
            topRight: Radius.circular(
              Dimensions.radiusSmall,
            ),
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(
            color:Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
