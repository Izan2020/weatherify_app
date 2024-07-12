import 'package:flutter/widgets.dart';

class SearchLocationPage extends StatefulWidget {
  const SearchLocationPage({super.key});

  @override
  State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text('Search Page')],
    );
  }
}
