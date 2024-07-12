// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:weatherify_app/presentation/constants/widget_colors.dart';
import 'package:weatherify_app/presentation/constants/widget_constants.dart';

class SearchBarHome extends StatefulWidget {
  TextEditingController textController;
  bool onSearch = false;
  Function onTapIcon;
  Function(String) onChangeSearch;
  SearchBarHome({
    super.key,
    required this.textController,
    required this.onSearch,
    required this.onTapIcon,
    required this.onChangeSearch,
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
          onChanged: (value) => widget.onChangeSearch(value),
          controller: widget.textController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 12,
            ),
            border: InputBorder.none,
            hintText: "Search",
            hoverColor: WidgetColors.secondary,
            suffixIcon: widget.onSearch
                ? GestureDetector(
                    child: const Icon(Icons.close),
                    onTap: () => widget.onTapIcon(),
                  )
                : const Icon(Icons.location_on),
          )),
    );
  }
}
