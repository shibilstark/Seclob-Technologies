import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 5,
      backgroundColor: pureWhite,
      width: size.width * 0.7,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AuthDrawerContainer(fun: () {}, title: "Login"),
                Gap(H: 10),
                AuthDrawerContainer(fun: () {}, title: "Sign Up"),
                Gap(H: 20),
                DrawerMentTiles(
                    fun: () {},
                    title: "Contact Us",
                    iconData: Icons.call_outlined),
                Gap(H: 15),
                DrawerMentTiles(
                    fun: () {},
                    title: "About Us",
                    iconData: Icons.info_outline),
                Gap(H: 15),
                DrawerMentTiles(
                    fun: () {},
                    title: "Terms & Conditions",
                    iconData: Icons.article_outlined),
                Gap(H: 15),
                DrawerMentTiles(
                    fun: () {},
                    title: "Privacy Policy",
                    iconData: Icons.lock_outline),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 0.5, color: commonBlack)),
                    child: Icon(
                      Icons.close,
                      color: commonBlack.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerMentTiles extends StatelessWidget {
  const DrawerMentTiles({
    Key? key,
    required this.title,
    required this.fun,
    required this.iconData,
  }) : super(key: key);

  final String title;
  final Function fun;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        fun.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey[100]),
        child: Row(children: [
          IconTheme(
            data: IconThemeData(size: 18),
            child: Icon(iconData),
          ),
          Gap(W: 20),
          Text(
            title,
            style: TextStyle(
                color: commonBlack, fontSize: 15, fontWeight: FontWeight.w500),
          )
        ]),
      ),
    );
  }
}

class AuthDrawerContainer extends StatelessWidget {
  const AuthDrawerContainer({
    Key? key,
    required this.title,
    required this.fun,
  }) : super(key: key);

  final String title;
  final Function fun;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        fun.call();
      },
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                stops: [0.3, 0.7, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [darkGreen, mediumGreen, lightGreen])),
        child: Align(
            child: Text(
          title,
          style: TextStyle(color: pureWhite, fontSize: 17),
        )),
      ),
    );
  }
}
