import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class MostUsedServiceWidget extends StatelessWidget {
  const MostUsedServiceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 175,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.grey[300]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Most Used Services",
                    style: TextStyle(
                        color: darkGreen,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            width: 100,
                            color: commonWhite,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 0.1,
                                              color: commonBlack,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 5,
                                                  blurStyle: BlurStyle.outer,
                                                  color: commonBlack
                                                      .withOpacity(0.2))
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Icon(
                                            Icons.bolt_outlined,
                                            size: 35,
                                            color: darkGreen,
                                          ),
                                        ),
                                        Gap(H: 3),
                                        Text(
                                          "Electrician",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Gap(H: 5),
                                        Text(
                                          "Seclobe Service\nat Kochi",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 15,
                                  width: double.infinity,
                                  decoration: BoxDecoration(color: darkGreen),
                                  child: Align(
                                      child: Text(
                                    "20 minutes ago",
                                    style: TextStyle(
                                        color: commonWhite, fontSize: 8),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => Gap(
                          W: 10,
                        ),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
