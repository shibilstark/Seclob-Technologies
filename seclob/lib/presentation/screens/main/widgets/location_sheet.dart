import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';
import 'package:seclob/presentation/widgets/common_search_field.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class LocationBottomSheetWidget extends StatelessWidget {
  const LocationBottomSheetWidget(
      {Key? key, required this.size, required this.title})
      : super(key: key);

  final String title;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      height: size.height * 0.75,
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 15,
                  )),
            ],
          ),
          Gap(H: 20),
          CommonSearchField(fillColor: Colors.grey[200]!),
          Gap(H: 5),
          Row(
            children: [
              Icon(
                Icons.explore_outlined,
                size: 18,
                color: darkGreen.withOpacity(0.6),
              ),
              Gap(W: 10),
              Text(
                'Detect your location',
                style: TextStyle(
                  color: darkGreen.withOpacity(0.6),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
