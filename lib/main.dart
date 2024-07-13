import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:weatherify_app/presentation/bloc/home/home_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home/search_location/search_location_bloc.dart';
import 'package:weatherify_app/presentation/interface/views/home_screen.dart';
import 'package:weatherify_app/presentation/interface/views/splash_screen.dart';
// Dependencies Injection
import 'injection.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Geolocator.requestPermission();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  await dotenv.load(fileName: ".env");
  await di.initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (_) => di.inject<HomeBloc>()),
        BlocProvider<SearchLocationBloc>(
            create: (_) => di.inject<SearchLocationBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Weatherify Dev",
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
