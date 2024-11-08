import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:flutter/material.dart';

class BackNavigationButton extends StatelessWidget {
  const BackNavigationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 55.0),
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: Colorconstants.darkBlueColor,
          borderRadius: BorderRadius.circular(12),
        ),
    
        // child Icon
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colorconstants.lightBlueColor,
        ),
      ),
    );
  }
}