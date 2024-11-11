import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:counter_plus_feedback/view/common_widgets/back_button_icon.dart';
import 'package:counter_plus_feedback/view/common_widgets/bottom_container.dart';
import 'package:counter_plus_feedback/view/common_widgets/common_text_container.dart';
import 'package:counter_plus_feedback/view/common_widgets/feedback_heading.dart';
import 'package:counter_plus_feedback/view/feedback_form/feedback_form_one.dart';

import 'package:flutter/material.dart';

class FeedbackQuestionFormOne extends StatelessWidget {
  const FeedbackQuestionFormOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      // body starts

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          // ---------------- Back Navigation Button --------------------------

          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeedbackForm(),
                  ));
            },
            child: const BackNavigationButton(),
          ),

          // ---------------- Back Navigation Button --------------------------

          const SizedBox(
            height: 25,
          ),

          // ---------------- Feedback Heading ---------------------------------

          const FeedBackHeading(),

          // ---------------- Feedback Heading ---------------------------------

          const SizedBox(
            height: 52,
          ),

          // ------------------ Form Container ---------------------------------

          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 40.0, right: 40.0, bottom: 76.0),
                      padding: const EdgeInsets.all(16.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colorconstants.darkBlueColor,
                        borderRadius: BorderRadius.circular(22),
                      ),

                      // child

                      child: Column(
                        children: [
                          // ---------------- first Text.... field ---------------------
                          const MultiLineTextContainer(
                            hintText: 'Question',
                          ),

                          // ---------------- first Text.... field ---------------------

                          const SizedBox(
                            height: 16,
                          ),

                          // ---------------- create your own ----------------------------

                          const SingleLineTextContainer(
                            hintText: '1 - 10',
                          ),

                          // ---------------- create your own --------------------------
                          const SizedBox(
                            height: 32,
                          ),

                          // Save and Delete Buttons

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 56,
                                  width: 136,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    border: Border.all(
                                        color: Colorconstants.whiteColor),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colorconstants.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 56,
                                  width: 88,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    border: Border.all(
                                        color: Colorconstants.whiteColor),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Delete",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colorconstants.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ------------------ Form Container ---------------------------------

          const BottomContainer(),

          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
