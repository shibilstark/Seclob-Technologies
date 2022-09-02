import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';
import 'package:seclob/core/styles.dart';
import 'package:seclob/main.dart';
import 'package:seclob/presentation/screens/home/widgets/fake_text_field.dart';
import 'package:seclob/presentation/screens/home/widgets/main_card.dart';
import 'package:seclob/presentation/screens/home/widgets/mobile_reward.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          FakeTextFieldWidget(),
          MobileRechargeAndRewardsWidget(),
          Gap(H: 20),
          VehicleServiceWidget()

          // PainterWidget(),
          // Gap(H: 20),
          // HomeBannerWidget(),
          // MostUsedServiceWidget(),
          // Gap(H: 20),
          // HomeBannerWidget(),
          // Gap(H: 20),
        ],
      ),
    );
  }
}

class VehicleServiceWidget extends StatelessWidget {
  const VehicleServiceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 270,
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

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 140,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, realIndex) => Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      repeat: ImageRepeat.noRepeat,
                      fit: BoxFit.fitWidth,
                      image: AssetImage("assets/img/bg.jpg"),
                    ),
                  ),
                ),
            options: CarouselOptions(
              autoPlay: true,
              autoPlayCurve: Curves.ease,
              pauseAutoPlayOnTouch: false,
              autoPlayInterval: Duration(seconds: 3),
            )),
      ),
    );
  }
}

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

class PainterWidget extends StatelessWidget {
  const PainterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: lightGreen.withOpacity(0.1)),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Home Maintanance",
            style: TextStyle(
                color: darkGreen, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          Gap(H: 10),

          SizedBox(
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
          )

          // Row(
          //   children: [
          //     Expanded(child: Container(height: 100, color: Colors.red)),
          //     Gap(W: 10),
          //     Expanded(child: Container(height: 100, color: Colors.red)),
          //     Gap(W: 10),
          //     Expanded(child: Container(height: 100, color: Colors.red)),
          //   ],
          // ),

          // Text(
          //   "Vehicle Services",
          //   style: TextStyle(
          //       color: darkGreen,
          //       fontWeight: FontWeight.w400,
          //       fontSize: 15),
          // ),

          // GridView.builder(
          //     shrinkWrap: true,
          //     physics: NeverScrollableScrollPhysics(),
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 3),
          //     itemBuilder: (context, index) => Container())
        ],
      ),
    );
  }
}
