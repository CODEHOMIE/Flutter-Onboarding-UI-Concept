import 'package:flutter/cupertino.dart';
import 'package:flutter_onboarding_ui_concept/constants/constants.dart';
import 'package:flutter_onboarding_ui_concept/generated/i18n.dart';
import 'package:flutter_onboarding_ui_concept/model/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    final sliderArrayList = [
      Slider(
          sliderImageUrl: 'assets/images/slider_1.png',
          sliderHeading: S.of(context).sliderHeading1,
          sliderSubHeading: S.of(context).sliderSubHeading1),
      Slider(
          sliderImageUrl: 'assets/images/slider_2.png',
          sliderHeading: S.of(context).sliderHeading2,
          sliderSubHeading: S.of(context).sliderSubHeading2),
      Slider(
          sliderImageUrl: 'assets/images/slider_3.png',
          sliderHeading: S.of(context).sliderHeading3,
          sliderSubHeading: S.of(context).sliderSubHeading3),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(sliderArrayList[index].sliderImageUrl))),
        ),
        SizedBox(
          height: 60.0,
        ),
        Text(
          sliderArrayList[index].sliderHeading,
          style: TextStyle(
            fontFamily: Constants.POPPINS,
            fontWeight: FontWeight.w700,
            fontSize: 20.5,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              sliderArrayList[index].sliderSubHeading,
              style: TextStyle(
                fontFamily: Constants.OPEN_SANS,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
                fontSize: 12.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
