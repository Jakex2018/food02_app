import 'package:flutter/material.dart';
import 'package:food02_app/screen/food/components/body.dart';

class ScreenFood extends StatelessWidget {
  const ScreenFood({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyFood(),
    );
  }
}