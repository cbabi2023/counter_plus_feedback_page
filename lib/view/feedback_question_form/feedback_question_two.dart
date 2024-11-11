import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:counter_plus_feedback/view/common_widgets/back_button_icon.dart';
import 'package:counter_plus_feedback/view/common_widgets/bottom_container.dart';

import 'package:counter_plus_feedback/view/common_widgets/feedback_heading.dart';
import 'package:counter_plus_feedback/view/feedback_form/feedback_form_one.dart';

import 'package:flutter/material.dart';

class FeedbackQuestionFormTwo extends StatelessWidget {
  const FeedbackQuestionFormTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double heightUnit = screenHeight / 100;
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

          // ------------------ 2 Question Container ---------------------------------

          // ##################### NOTE ##############################

          // The question container has same content but the Icon
          //(3 BOXED & A SQUARE ICON IN MIDDLE) is different
          // don't have details of that 2ND icon so not making question container
          // scalable

          // ##################### NOTE ##############################

          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 23),
              child: Column(
                children: [
                  // -------------- First Question Container ---------------------------------

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 11),
                          height: 136,
                          decoration: BoxDecoration(
                            gradient: Colorconstants.questionContainer,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Question',
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colorconstants.whiteColor,
                                ),
                                textAlign: TextAlign.left,
                              ),

                              // rounded Boxes

                              Row(
                                children: List.generate(
                                  3,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                        color: Colorconstants.whiteColor,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 3,
                            height: 72,
                            decoration: const BoxDecoration(
                              color: Colorconstants.whiteColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  // -------------- First Question Container ---------------------------------

                  const SizedBox(
                    height: 10,
                  ),

                  const Divider(),

                  const SizedBox(
                    height: 10,
                  ),
                  // -------------- Second Question Container ---------------------------------

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 11),
                          height: 136,
                          decoration: BoxDecoration(
                            gradient: Colorconstants.questionContainer,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Question',
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colorconstants.whiteColor,
                                ),
                                textAlign: TextAlign.left,
                              ),

                              // Square box in the Middle

                              Row(
                                children: [
                                  Container(
                                    width: 5,
                                    height: 16,
                                    color: Colorconstants.whiteColor,
                                  ),
                                  Container(
                                    width: 21,
                                    height: 2.5,
                                    color: Colorconstants.whiteColor,
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colorconstants.whiteColor,
                                  ),
                                  Container(
                                    width: 21,
                                    height: 2.5,
                                    color: Colorconstants.whiteColor,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 16,
                                    color: Colorconstants.whiteColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 3,
                            height: 72,
                            decoration: const BoxDecoration(
                              color: Colorconstants.whiteColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  // -------------- Second Question Container ---------------------------------
                ],
              ),
            ),
          )),

          // ------------------ 2 Question  Container ---------------------------------

          const SizedBox(
            height: 48,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 75,
                width: 104,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colorconstants.whiteColor,
                    )),
                child: const Icon(
                  Icons.add,
                  size: 55,
                  color: Colorconstants.whiteColor,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 100,
          ),

          const BottomContainer(),

          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
