import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:counter_plus_feedback/view/common_widgets/back_button_icon.dart';
import 'package:counter_plus_feedback/view/common_widgets/bottom_container.dart';
import 'package:counter_plus_feedback/view/common_widgets/common_text_container.dart';
import 'package:counter_plus_feedback/view/common_widgets/feedback_heading.dart';
import 'package:counter_plus_feedback/view/feedback_form/feedback_form_two.dart';
import 'package:flutter/material.dart';

class FeedbackForm extends StatelessWidget {
  const FeedbackForm({super.key});

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

                          const SingleLineTextContainer(hintText: 'Create own'),

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
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Colorconstants.whiteColor,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            bottomLeft: Radius.circular(16)),
                                      ),
                                    ),
                                    child: const Text(
                                      'Bar',
                                      style: TextStyle(
                                        color: Colorconstants.backgroundColor,
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

                                    // navigate to feedback two || boxes fuction
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const FeedbackFormTwo(),
                                        ));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colorconstants.backgroundColor,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          bottomRight: Radius.circular(16)),
                                    ),
                                  ),
                                  child: const Text(
                                    'Boxes',
                                    style: TextStyle(
                                      color: Colorconstants.whiteColor,
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
                            height: 17,
                          ),

                          // ---------------- 1 to 10 with square icon and line -----------------------

                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 36.0),
                            child: Row(
                              children: [
                                // #01
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colorconstants.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colorconstants.backgroundColor,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  width: 8,
                                ),

                                // Divider
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colorconstants.whiteColor,
                                  ),
                                ),
                                // square box
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: const BoxDecoration(
                                    color: Colorconstants.whiteColor,
                                  ),
                                ),
                                // Divider
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colorconstants.whiteColor,
                                  ),
                                ),

                                const SizedBox(
                                  width: 8,
                                ),

                                // #02
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colorconstants.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colorconstants.backgroundColor,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // ---------------- 1 to 10 with square icon and line -----------------------

                          const SizedBox(
                            height: 17,
                          ),

                          // ---------------- 1) textcontainer -----------------------

                          const MultiLineTextContainer(hintText: '1)'),

                          // ---------------- 1) textcontainer -----------------------

                          const SizedBox(
                            height: 17,
                          ),

                          // ---------------- 10) textcontainer -----------------------

                          const MultiLineTextContainer(hintText: '10)'),

                          // ---------------- 10) textcontainer -----------------------
                        ],
                      ),
                    ),

                    // ----------------- Bottom Container with 3 Buttons -----------------

                    Positioned(
                      bottom: heightUnit * 6,
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
        ],
      ),
    );
  }
}
