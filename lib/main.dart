import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/home_view.dart';
import 'package:ishow_clone/constants.dart';

void main() {
  runApp(const IshowClone());
}

class IshowClone extends StatelessWidget {
  const IshowClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
        fontFamily: kFontFamily,
      ),
    );
  }
}
