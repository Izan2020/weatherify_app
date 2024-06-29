import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weatherify_app/presentation/interface/pages/home_screen.dart';
import 'package:weatherify_app/presentation/interface/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [
        // List of Blocs
      ],
      child: MaterialApp.router(
        routerConfig: GoRouter(
          initialLocation: SplashScreen.routePath,
          routes: [
            GoRoute(
              path: HomeScreen.routePath,
              builder: (context, state) => const HomeScreen(),
            ),
            GoRoute(
              path: SplashScreen.routePath,
              builder: (context, state) => const SplashScreen(),
            )
          ],
        ),
      ),
    );
  }
}
