// Common Text Container

import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String hintText;

  const TextContainer({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        color: Colorconstants.containerColor,
        borderRadius: BorderRadius.circular(16),
      ),

      // textfield

      child: TextFormField(
        maxLines: 3, // max 3 lines will be shown
        keyboardType: TextInputType.multiline, // multiline input
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colorconstants.whiteColor.withOpacity(0.5),
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
        ),

        // styling the text input by user
        style: const TextStyle(
          color: Colorconstants.whiteColor,
          fontSize: 15,
        ),
      ),
    );
  }
}
