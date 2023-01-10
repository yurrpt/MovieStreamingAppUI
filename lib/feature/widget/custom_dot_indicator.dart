import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/constants/constants.dart';

Widget dotIndicator({required int activeIndex, required int count}) => AnimatedSmoothIndicator(
      effect: ExpandingDotsEffect(
        activeDotColor: Constants.activeDotColor,
        dotColor: Constants.deactiveDotColor,
        dotWidth: 14,
        dotHeight: 10,
      ),
      activeIndex: activeIndex,
      count: count,
    );
