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
import 'package:seclob/presentation/screens/home/widgets/home_banner.dart';
import 'package:seclob/presentation/screens/home/widgets/home_row_widget_texture.dart';
import 'package:seclob/presentation/screens/home/widgets/main_card.dart';
import 'package:seclob/presentation/screens/home/widgets/mobile_reward.dart';
import 'package:seclob/presentation/screens/home/widgets/most_user_service.dart';
import 'package:seclob/presentation/screens/home/widgets/painter.dart';
import 'package:seclob/presentation/screens/home/widgets/vehicle_service.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: const [
          FakeTextFieldWidget(),
          MobileRechargeAndRewardsWidget(),
          Gap(H: 20),
          VehicleServiceWidget(),
          Gap(H: 20),
          PainterWidget(title: "Home Maintanance"),
          Gap(H: 20),
          HomeBannerWidget(img: "assets/img/bg.jpg"),
          MostUsedServiceWidget(),
          HomeBannerWidget(img: "assets/img/bg2.jpg"),
          Gap(H: 20),
          HomeRowWidgetTexture(
            title: "Store",
            img: 'assets/img/smartPhone.jpg',
            name: 'Y15s',
            offerPrice: "2300/-",
            price: '25000',
          ),
          Gap(H: 20),
          HomeRowWidgetTexture(
            title: "Eats",
            img: 'assets/img/biriyani.jpg',
            name: 'Biriyani',
            offerPrice: "100/-",
            price: '100',
          ),
          Gap(H: 20),
          PainterWidget(title: "Jobs"),
          Gap(H: 20),
        ],
      ),
    );
  }
}
