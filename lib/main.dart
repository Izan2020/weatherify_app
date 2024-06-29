import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weatherify_app/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:weatherify_app/presentation/interface/pages/home_screen.dart';
import 'package:weatherify_app/presentation/interface/pages/splash_screen.dart';
// Dependencies Injection
import 'injection.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  await di.initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (_) => di.inject<HomeBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
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
