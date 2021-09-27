import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_onboarding_ui_concept/constants/constants.dart';
import 'package:flutter_onboarding_ui_concept/model/slider.dart';
import 'package:flutter_onboarding_ui_concept/widgets/slide_dots.dart';
import 'package:flutter_onboarding_ui_concept/widgets/slide_items/slide_item.dart';

class SliderLayoutView extends StatefulWidget {
  const SliderLayoutView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: sliderArrayList.length,
            itemBuilder: (ctx, i) => SlideItem(index: i),
          ),
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              const Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                  child: Text(
                    Constants.next,
                    style: TextStyle(
                      fontFamily: Constants.openSans,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                  child: Text(
                    Constants.skip,
                    style: TextStyle(
                      fontFamily: Constants.openSans,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.bottomCenter,
                margin: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < sliderArrayList.length; i++)
                      if (i == _currentPage)
                        SlideDots(widget.key, true)
                      else
                        SlideDots(widget.key, false)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
