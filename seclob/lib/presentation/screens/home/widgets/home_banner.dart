import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/core/constants.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({Key? key, required this.img}) : super(key: key);

  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 170,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, realIndex) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      repeat: ImageRepeat.noRepeat,
                      fit: BoxFit.fitWidth,
                      image: AssetImage(img),
                    ),
                  ),

                  // child: Expanded(
                  //   child: Image.asset(
                  //     'assets/img/bg.jpg',
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ),
            options: CarouselOptions(
              padEnds: false,
              autoPlay: true,
              autoPlayCurve: Curves.ease,
              pauseAutoPlayOnTouch: false,
              viewportFraction: 1,
              autoPlayInterval: Duration(seconds: 3),
            )),
      ),
    );
  }
}
