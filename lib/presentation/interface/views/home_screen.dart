import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home/home_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home/home_event.dart';
import 'package:weatherify_app/presentation/bloc/home/home_state.dart';
import 'package:weatherify_app/presentation/interface/fragments/search_page.dart';
import 'package:weatherify_app/presentation/interface/fragments/weather_page.dart';
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
        title: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SearchBarHome(
              textController: searchLocationController,
              onSearch: state is OnDefault ? false : true,
              onTapIcon: () {
                context.read<HomeBloc>().add(OnSwitchHomeEvent(OnDefault()));
                searchLocationController.text = "";
              },
              onChangeSearch: (data) => onChangeSearch(data),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (build, state) {
            switch (state) {
              case OnDefault():
                return const WeatherPage();
              case OnSearchLocation():
                return const SearchLocationPage();
              default:
                return const Text('Page Not Found');
            }
          },
        ),
      ),
    );
  }

  void onChangeSearch(String value) {
    final homeBloc = context.read<HomeBloc>();
    homeBloc.add(OnSwitchHomeEvent(
      value.isNotEmpty ? OnSearchLocation() : OnDefault(),
    ));
  }
}
