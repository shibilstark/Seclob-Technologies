import 'package:flutter/material.dart';

import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';

class CommonSearchField extends StatelessWidget {
  const CommonSearchField({
    required this.fillColor,
    Key? key,
  }) : super(key: key);

  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: fillColor,
          hintText: "Type Your Location",
        ),
      ),
    );
  }
}
