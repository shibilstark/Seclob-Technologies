import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class PainterWidget extends StatelessWidget {
  const PainterWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: lightGreen.withOpacity(0.1)),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: darkGreen, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          Gap(H: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: double.infinity,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(painterBgImage))),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.bottomCenter,
                                begin: Alignment.topCenter,
                                colors: [
                              Colors.redAccent.withOpacity(0),
                              Colors.redAccent.withOpacity(0.3)
                            ])),
                        child: Align(
                            child: Text(
                          "Painter",
                          style: TextStyle(
                            color: commonBlack,
                            fontSize: 15,
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                itemCount: 10,
                separatorBuilder: (context, index) => Gap(
                  W: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
