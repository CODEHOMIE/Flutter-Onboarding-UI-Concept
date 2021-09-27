import 'package:flutter/cupertino.dart';
import 'package:flutter_onboarding_ui_concept/constants/constants.dart';
import 'package:flutter_onboarding_ui_concept/model/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                sliderArrayList[index].sliderImageUrl,
              ),
            ),
          ),
        ),
        const SizedBox(height: 60.0),
        Text(
          sliderArrayList[index].sliderHeading,
          style: const TextStyle(
            fontFamily: Constants.poppins,
            fontWeight: FontWeight.w700,
            fontSize: 20.5,
          ),
        ),
        const SizedBox(height: 15.0),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              sliderArrayList[index].sliderSubHeading,
              style: const TextStyle(
                fontFamily: Constants.openSans,
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
