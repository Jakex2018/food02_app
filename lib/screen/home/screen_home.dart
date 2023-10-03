import 'package:flutter/material.dart';
import 'package:food02_app/components/app_bar_build.dart';
import 'package:food02_app/constant.dart';
import 'package:food02_app/screen/home/components/body.dart';
class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: appbar(),
      body: const BodyHome(),
    );
  }

  PreferredSize appbar() {
    return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight), // Ajusta la altura según tus necesidades
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding+5 , vertical: 2),
      child: AppBarBuild(),
    ),
  );
  }
}