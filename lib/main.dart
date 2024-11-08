import 'package:counter_plus_feedback/utils/colorconstants/colorconstants.dart';
import 'package:counter_plus_feedback/view/feedback_form/feedback_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // background color
      theme: ThemeData(
          scaffoldBackgroundColor: Colorconstants.backgroundColor,
          appBarTheme: const AppBarTheme(
            color: Colorconstants.backgroundColor,
          )),

      debugShowCheckedModeBanner: false,
      // feedback_form/ feedback_form.dart
      home: const FeedbackForm(),
    );
  }
}
