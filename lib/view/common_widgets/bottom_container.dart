import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 56,
          width: 200,
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
          decoration: BoxDecoration(
            color: Colorconstants.bottomContainerColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ----------- circular Icon -------------------------------
              CircleAvatar(
                radius: 12,
                backgroundColor: Colorconstants.circleButtonBackgroundColor,
                child: CircleAvatar(
                  radius: 9,
                  backgroundColor: Colorconstants.whiteColor,
                ),
              ),

              // ------------- circular Icon -------------------------------
              // ------------- home Icon ---------------------------------
              HugeIcon(
                icon: HugeIcons.strokeRoundedHome07,
                color: Colorconstants.whiteColor,
              ),

              // ------------- home Icon ---------------------------------
              // ------------- setting Icon ---------------------------------
              HugeIcon(
                icon: HugeIcons.strokeRoundedSettings02,
                color: Colorconstants.whiteColor,
              ),

              // ------------- setting Icon ---------------------------------
            ],
          ),
        ),
      ],
    );
  }
}