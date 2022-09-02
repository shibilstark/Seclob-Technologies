import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:seclob/core/colors.dart';

import 'package:seclob/presentation/widgets/gap.dart';

final _fakeSearchTexts = <String>[
  'Enquiry',
  'Auction',
  'Rent a Car',
  'Vehicle Service',
  'News',
  'Store',
  'Eats'
];

class FakeTextFieldWidget extends StatelessWidget {
  const FakeTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(color: Colors.grey[300]),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: pureWhite),
          child: Row(
            children: [
              Icon(Icons.search, size: 18),
              Gap(W: 10),
              Text(
                "Search anything...",
                style: TextStyle(color: commonBlack.withOpacity(0.5)),
              ),
              Expanded(
                child: Container(
                  child: CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder: (context, index, realIndex) => Text(
                          _fakeSearchTexts[index],
                          style:
                              TextStyle(color: commonBlack.withOpacity(0.5))),
                      options: CarouselOptions(
                        pauseAutoPlayInFiniteScroll: false,
                        scrollDirection: Axis.vertical,
                        autoPlay: true,
                        // autoPlayAnimationDuration:
                        //     Duration(milliseconds: 300),
                        // autoPlayCurve: Curves.easeIn,
                        autoPlayInterval: Duration(seconds: 2),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
