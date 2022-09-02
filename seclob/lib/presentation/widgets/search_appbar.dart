import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      title: Text("Services"),
      titleSpacing: -5,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.5, 1],
              colors: [darkGreen, lightGreen]),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        const Gap(W: 5)
      ],
    );
  }
}
