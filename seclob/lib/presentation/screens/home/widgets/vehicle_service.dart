import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/styles.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class VehicleServiceWidget extends StatelessWidget {
  const VehicleServiceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Vehicle Services",
              style: bodyTitles,
            ),
          ),
          Gap(H: 20),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 2),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  color: lightGreen.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.car_crash_outlined,
                      color: commonWhite,
                      size: 40,
                    ),
                    // Gap(H: 5),
                    Text(
                      "Car Accessories",
                      style: TextStyle(
                        color: commonWhite,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
            itemCount: 6,
          )
        ],
      ),
    );
  }
}
