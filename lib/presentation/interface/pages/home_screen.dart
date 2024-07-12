import 'package:flutter/material.dart';
import 'package:weatherify_app/presentation/interface/widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  static String routePath = "/home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var searchLocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBarHome(
          textController: searchLocationController,
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
