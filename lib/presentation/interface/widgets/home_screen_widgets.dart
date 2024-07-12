// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:weatherify_app/presentation/constants/widget_colors.dart';
import 'package:weatherify_app/presentation/constants/widget_constants.dart';

class SearchBarHome extends StatefulWidget {
  TextEditingController textController;
  SearchBarHome({
    super.key,
    required this.textController,
  });

  @override
  State<SearchBarHome> createState() => _SearchBarHomeState();
}

class _SearchBarHomeState extends State<SearchBarHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: WidgetColors.lightGrey,
        borderRadius: WidgetConstants.borderRadius,
      ),
      width: double.maxFinite,
      child: TextField(
          controller: widget.textController,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            border: InputBorder.none,
            hintText: "Location",
            hoverColor: WidgetColors.secondary,
          )),
    );
  }
}
