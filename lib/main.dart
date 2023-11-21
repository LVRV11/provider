import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_provider.dart';
import 'animated_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => ColorProvider(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROVIDER',
          style: TextStyle(
            color: context.watch<ColorProvider>().appBarTextColor,
          ),
        ),
      ),
      body: Center(
        child: MyAnimatedContainer(),
      ),
      floatingActionButton: SwitchButton(),
    );
  }
}

class SwitchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.read<ColorProvider>().updateColors();
      },
      child: Icon(Icons.flip),
    );
  }
}
