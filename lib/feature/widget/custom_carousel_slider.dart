import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../core/constants/constants.dart';
import 'custom_card.dart';
import 'custom_dot_indicator.dart';

class SliderCard extends StatefulWidget {
  const SliderCard({super.key});

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  int activeIndex = 1;

  final CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<Widget> carouselList = [
      _normalCard(),
      _decoratedCard(),
      _normalCard(),
    ];

    return Column(
      children: [
        CarouselSlider(
          items: carouselList,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            initialPage: 1,
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.720,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) => setState(() => activeIndex = index),
          ),
        ),
        _sizedBox(17),
        dotIndicator(activeIndex: activeIndex, count: carouselList.length),
        _sizedBox(33),
      ],
    );
  }

  SizedBox _sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  CustomCard _normalCard() => CustomCard();

  CustomCard _decoratedCard() {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 14.0),
        child: Stack(
          children: [
            Container(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/images/png/img.png",
                )),
            Align(
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                "Nonton Dimana Saja,\nKapan Saja",
                style: TextStyle(
                  color: Constants.whiteColor,
                  fontFamily: Constants.fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  letterSpacing: 2,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                "Mulai",
                style: TextStyle(
                  color: Constants.whiteColor,
                  fontFamily: Constants.fontFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  letterSpacing: 2,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              child: Row(
                children: [
                  GradientText(
                    'Rp.20,000',
                    style: const TextStyle(
                      fontFamily: Constants.fontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.5,
                      letterSpacing: 2,
                    ),
                    gradientType: GradientType.radial,
                    radius: 2.5,
                    colors: const [
                      Color(0xffF2C94C),
                      Color(0xffFFE28A),
                    ],
                  ),
                  const SizedBox(
                    width: 1.65,
                  ),
                  GradientText(
                    '/ 30 Hari',
                    style: const TextStyle(
                      fontFamily: Constants.fontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      letterSpacing: 2,
                    ),
                    gradientType: GradientType.radial,
                    radius: 2.5,
                    colors: const [
                      Color(0xffF2C94C),
                      Color(0xffFFE28A),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () => print('sag'),
                child: Container(
                  width: 85,
                  height: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: Constants.buttonLinears,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      'Klik Disini',
                      style: TextStyle(
                        color: Constants.fontColor,
                        fontFamily: Constants.fontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
