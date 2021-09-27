import 'package:flutter_onboarding_ui_concept/constants/constants.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider({
    required this.sliderImageUrl,
    required this.sliderHeading,
    required this.sliderSubHeading,
  });
}

final sliderArrayList = [
  Slider(
    sliderImageUrl: 'assets/images/slider_1.png',
    sliderHeading: Constants.sliderHeading_1,
    sliderSubHeading: Constants.sliderDesc,
  ),
  Slider(
    sliderImageUrl: 'assets/images/slider_2.png',
    sliderHeading: Constants.sliderHeading_2,
    sliderSubHeading: Constants.sliderDesc,
  ),
  Slider(
    sliderImageUrl: 'assets/images/slider_3.png',
    sliderHeading: Constants.sliderHeading_3,
    sliderSubHeading: Constants.sliderDesc,
  ),
];
