import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weatherify_app/presentation/constants/widget_colors.dart';
import 'package:weatherify_app/presentation/interface/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routePath = "/splash-screen";
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Delay on Splash Screen
    Future.delayed(
      const Duration(seconds: 2),
      () => context.go(HomeScreen.routePath),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: WidgetColors.primary,
      body: Center(
        child: Text(
          'Weatherify.',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
