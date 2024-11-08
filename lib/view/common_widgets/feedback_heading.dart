import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:flutter/material.dart';

class FeedBackHeading extends StatelessWidget {
  const FeedBackHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Feedback',
          style: TextStyle(
            color: Colorconstants.whiteColor,
            fontSize: 30,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
