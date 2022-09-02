import 'package:flutter/material.dart';
import 'package:seclob/core/colors.dart';
import 'package:seclob/presentation/widgets/gap.dart';

class HomeRowWidgetTexture extends StatelessWidget {
  const HomeRowWidgetTexture({
    Key? key,
    required this.title,
    required this.img,
    required this.name,
    required this.price,
    required this.offerPrice,
  }) : super(key: key);
  final String title;
  final String img;
  final String name;
  final String price;
  final String offerPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(color: lightGreen.withOpacity(0.2)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: darkGreen, fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          Gap(H: 10),
          SizedBox(
            height: 120,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover, image: AssetImage(img))),
                          ),
                        ),
                        Container(
                          // width: double.maxFinite,
                          width: 120,
                          padding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                          decoration: BoxDecoration(
                              color: lightGreen,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                              name,
                              style: TextStyle(
                                  color: pureWhite,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                            Gap(H: 5),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: "${offerPrice}  ",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: price,
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: commonWhite,
                                      color: commonWhite,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500)),
                            ]))
                          ]),
                        )
                      ],
                    ),
                separatorBuilder: (context, index) => Gap(W: 10),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
