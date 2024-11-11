// After Clicking the Boxes Button

import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:counter_plus_feedback/view/common_widgets/back_button_icon.dart';
import 'package:counter_plus_feedback/view/common_widgets/bottom_container.dart';
import 'package:counter_plus_feedback/view/common_widgets/common_text_container.dart';
import 'package:counter_plus_feedback/view/common_widgets/feedback_heading.dart';
import 'package:counter_plus_feedback/view/feedback_form/feedback_form_one.dart';
import 'package:counter_plus_feedback/view/feedback_question_form/feedback_question_one.dart';
import 'package:flutter/material.dart';

// After Clicking the Boxes Button

class FeedbackFormTwo extends StatefulWidget {
  const FeedbackFormTwo({super.key});

  @override
  State<FeedbackFormTwo> createState() => _FeedbackFormTwoState();
}

class _FeedbackFormTwoState extends State<FeedbackFormTwo> {
  bool isChecked = false;
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

          const BackNavigationButton(),

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
                            hintText: 'Text...',
                          ),

                          // ---------------- first Text.... field ---------------------

                          const SizedBox(
                            height: 16,
                          ),

                          // ---------------- create your own ----------------------------

                          const SingleLineTextContainer(
                            hintText: 'Create own',
                          ),

                          // ---------------- create your own --------------------------

                          const SizedBox(
                            height: 17,
                          ),

                          // ---------------- Bar and Boxes Buttons -----------------------

                          Container(
                            width: 183,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colorconstants.whiteColor,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colorconstants.whiteColor,
                                  width: 0.5,
                                )),
                            child: Row(
                              children: [
                                // First button (left half)
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // logic here
                                      // navigate to feedback two || boxes fuction
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const FeedbackForm(),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Colorconstants.backgroundColor,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            bottomLeft: Radius.circular(16)),
                                      ),
                                    ),
                                    child: const Text(
                                      'Bar',
                                      style: TextStyle(
                                        color: Colorconstants.whiteColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),

                                // Second button (right half)
                                ElevatedButton(
                                  onPressed: () {
                                    // logic here
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const FeedbackQuestionFormOne(),
                                        ));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colorconstants.whiteColor,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          bottomRight: Radius.circular(16)),
                                    ),
                                  ),
                                  child: const Text(
                                    'Boxes',
                                    style: TextStyle(
                                      color: Colorconstants.backgroundColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // ---------------- Bar and Boxes Buttons -----------------------

                          const SizedBox(
                            height: 16,
                          ),

                          // ---------------- check box and Text button ----------------------------

                          createTextContainerWithCheckBox(),

                          const SizedBox(
                            height: 16,
                          ),

                          createTextContainerWithCheckBox(),

                          // ---------------- check box and Text button ----------------------------

                          const SizedBox(
                            height: 24,
                          ),

                          // Add Button

                          Container(
                            height: 58,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(
                                color: Colorconstants.whiteColor,
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colorconstants.whiteColor,
                              size: 40,
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          // Add Button

                          Text(
                            'Add box',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colorconstants.whiteColor.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                    ),

                    // ----------------- Bottom Container with 3 Buttons -----------------

                    Positioned(
                      bottom: heightUnit,
                      left: 0,
                      right: 0,
                      child: const BottomContainer(),
                    ),

                    // ----------------- Bottom Container with 3 Buttons -----------------
                  ],
                ),
              ),
            ),
          ),

          // ------------------ Form Container ---------------------------------

          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  // Check box and Text Container

  Row createTextContainerWithCheckBox() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colorconstants.whiteColor,
                width: 1,
              ),
            ),
            child: isChecked
                ? const Icon(
                    Icons.check,
                    color: Colorconstants.whiteColor,
                  )
                : null,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              color: Colorconstants.containerColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Text...',
                hintStyle: TextStyle(
                  color: Colorconstants.whiteColor.withOpacity(0.5),
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
