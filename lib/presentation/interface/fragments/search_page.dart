import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home/search_location/search_location_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home/search_location/search_location_state.dart';

class SearchLocationPage extends StatefulWidget {
  const SearchLocationPage({super.key});

  @override
  State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchLocationBloc, SearchLocationState>(
      builder: (build, state) {
        switch (state) {
          case SuccessSLS():
            return ListView.builder(
              itemCount: state.data.listOfLocation.length,
              itemBuilder: (context, index) {
                final result = state.data.listOfLocation[index];
                return ListTile(title: Text(result.title));
              },
            );
          case ErrorSLS():
            final message = state.message;
            return Text(message ?? "Error");
          default:
            return const Text('Loading');
        }
      },
    );
  }
}
