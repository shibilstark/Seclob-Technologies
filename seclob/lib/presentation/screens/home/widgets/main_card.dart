import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:seclob/core/colors.dart';

import 'package:seclob/presentation/screens/home/widgets/fake_text_field.dart';
import 'package:seclob/presentation/widgets/gap.dart';

const _circleLabelTitle = <String>[
  'Services',
  'Enquiry',
  'Store',
  'Job',
  'News',
  'Vehicle Service',
  'Eats',
  'More',
];

const _circleLabelIcons = <IconData>[
  Icons.design_services_outlined,
  Icons.chat_outlined,
  Icons.storefront_outlined,
  Icons.work_outline,
  Icons.feed_outlined,
  Icons.directions_car_outlined,
  Icons.lunch_dining_outlined,
  Icons.apps,
];

class HomeMaincard extends StatelessWidget {
  const HomeMaincard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [darkGreen, lightGreen],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Center(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 1 / 1, mainAxisSpacing: 8),
          itemBuilder: (context, index) => CircleIconAvatar(
            iconData: _circleLabelIcons[index],
            fun: () {},
            title: _circleLabelTitle[index],
          ),
          itemCount: 8,
        ),
      ),
    );
  }
}

class CircleIconAvatar extends StatelessWidget {
  const CircleIconAvatar(
      {Key? key,
      required this.iconData,
      required this.fun,
      required this.title})
      : super(key: key);

  final IconData iconData;
  final Function fun;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: commonWhite,
            child: Icon(
              iconData,
              color: darkGreen,
            ),
          ),
          Gap(H: 5),
          Text(
            title,
            style: TextStyle(
              color: pureWhite,
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }
}
