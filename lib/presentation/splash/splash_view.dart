import 'package:flutter/material.dart';

import '../resources/ImageAssets.dart';
import '../resources/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body:
      const Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }
}

