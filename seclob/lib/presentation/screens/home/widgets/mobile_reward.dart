import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/main.dart';
import 'package:seclob/presentation/screens/home/widgets/fake_text_field.dart';
import 'package:seclob/presentation/screens/home/widgets/main_card.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class MobileRechargeAndRewardsWidget extends StatelessWidget {
  const MobileRechargeAndRewardsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Column(
        children: [HomeMaincard(), Gap(H: 20), RewardsAndOffersWidget()],
      ),
    );
  }
}

class RewardsAndOffersWidget extends StatelessWidget {
  const RewardsAndOffersWidget({Key? key}) : super(key: key);
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.orange,
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(children: [
                            Icon(
                              Icons.smartphone_outlined,
                              size: 40,
                              color: pureWhite,
                            ),
                            Gap(W: 5),
                            Expanded(
                              child: Text(
                                "Mobile Recharge",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: pureWhite,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            )
                          ]),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.orangeAccent,
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2%",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: commonBlack),
                                ),
                                // Gap(H: 1),
                                Text(
                                  "0ff",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color: commonBlack),
                                ),
                              ]),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Gap(W: 20),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(color: Colors.purple),
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.redeem_outlined,
                        size: 40,
                        color: pureWhite,
                      ),
                      Gap(W: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rewards",
                            style: TextStyle(
                              color: pureWhite,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                          Gap(H: 1),
                          Text(
                            "Invite Friends\nget rewards",
                            style: TextStyle(
                              color: pureWhite,
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
