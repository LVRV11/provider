import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_provider.dart';

class MyAnimatedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: 200,
      height: 200,
      color: context.watch<ColorProvider>().containerColor,
    );
  }
}
