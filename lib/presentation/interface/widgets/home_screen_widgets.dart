import 'package:flutter/material.dart';
import 'package:weatherify_app/presentation/constants/widget_constants.dart';

class SearchBarHome extends StatelessWidget {
  const SearchBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.grey, borderRadius: WidgetConstants.borderRadius),
      height: 42,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 12),
    );
  }
}
