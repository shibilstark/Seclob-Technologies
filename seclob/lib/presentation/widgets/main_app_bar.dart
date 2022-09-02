import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';
import 'package:seclob/presentation/screens/main/main.dart';
import 'package:seclob/presentation/widgets/gap.dart';

enum MainAppBarTypes {
  home,
  withLeading,
}

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
    required this.type,
    required this.size,
  }) : super(key: key);

  final Size size;
  final MainAppBarTypes type;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: type == MainAppBarTypes.home
          ? const Padding(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage(seclobLogo),
              ),
            )
          : IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back)),
      actions: [
        MainAppBarLocationContainer(fun: () {
          showLocationBootomSheet(context: context, size: size);
        }),
        IconButton(
            onPressed: () {
              homeKey.currentState!.openEndDrawer();
            },
            icon: const Icon(Icons.menu)),
        const Gap(W: 5)
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.5, 1],
              colors: [darkGreen, lightGreen]),
        ),
      ),
    );
  }
}
