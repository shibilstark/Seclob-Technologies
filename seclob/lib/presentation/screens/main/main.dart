import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';
import 'package:seclob/presentation/screens/home/home.dart';
import 'package:seclob/presentation/screens/main/drawer.dart';
import 'package:seclob/presentation/screens/main/widgets/location_sheet.dart';

import 'package:seclob/presentation/widgets/gap.dart';
import 'package:seclob/presentation/widgets/main_app_bar.dart';

ValueNotifier<int> _bottomNav = ValueNotifier(0);
final homeKey = GlobalKey<ScaffoldState>();

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: homeKey,
      resizeToAvoidBottomInset: false,
      endDrawer: SafeArea(child: SideDrawer()),
      appBar: PreferredSize(
        preferredSize: appBarHeight,
        child: MainAppBar(size: size, type: MainAppBarTypes.home),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
      body: ValueListenableBuilder(
          valueListenable: _bottomNav,
          builder: (context, int val, _) {
            return _menuPages[val];
          }),
    );
  }
}

const _menuPages = [
  HomeScreen(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
];

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _bottomNav,
        builder: (context, int value, _) {
          return Container(
            height: 75,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(40), right: Radius.circular(30)),
                child: BottomNavigationBar(
                    currentIndex: _bottomNav.value,
                    onTap: (val) {
                      _bottomNav.value = val;
                      _bottomNav.notifyListeners();
                    },
                    selectedIconTheme:
                        IconThemeData(color: darkGreen, size: 27),
                    unselectedIconTheme:
                        IconThemeData(color: darkGreen, size: 27),
                    selectedLabelStyle:
                        TextStyle(fontSize: 12, color: darkGreen),
                    unselectedLabelStyle:
                        TextStyle(fontSize: 12, color: darkGreen),
                    type: BottomNavigationBarType.fixed,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home_outlined),
                          activeIcon: Icon(Icons.home_rounded),
                          label: 'Home',
                          tooltip: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person_add_outlined),
                          activeIcon: Icon(Icons.person_add_rounded),
                          label: "Invite & Earn",
                          tooltip: "Invite & Earn"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.assignment_outlined),
                          activeIcon: Icon(Icons.assignment_rounded),
                          label: "Free Listing",
                          tooltip: "Free Listing"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person_outline),
                          activeIcon: Icon(Icons.person_rounded),
                          label: "Account",
                          tooltip: "Account"),
                    ]),
              ),
            ),
          );
        });
  }
}

showLocationBootomSheet({required BuildContext context, required Size size}) {
  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      context: context,
      builder: (context) => LocationBottomSheetWidget(
            size: size,
            title: "Your Location",
          ));
}

class MainAppBarLocationContainer extends StatelessWidget {
  const MainAppBarLocationContainer({Key? key, required this.fun})
      : super(key: key);

  final Function fun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
      child: InkWell(
        onTap: () {
          fun.call();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
          child: Row(children: [
            Icon(
              Icons.pin_drop_outlined,
              color: commonBlack.withOpacity(0.7),
              size: 18,
            ),
            Gap(W: 5),
            Expanded(
              child: Text(
                "Palazhi, Kozhikkode, 677897,Kerala",
                style: TextStyle(fontSize: 12, color: commonBlack),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ]),
          decoration: BoxDecoration(
              color: commonWhite, borderRadius: BorderRadius.circular(7)),
          width: 140,
        ),
      ),
    );
  }
}
