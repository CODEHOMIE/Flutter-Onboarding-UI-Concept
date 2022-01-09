import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_onboarding_ui_concept/constants/constants.dart';
import 'package:flutter_onboarding_ui_concept/generated/i18n.dart';
import 'package:flutter_onboarding_ui_concept/model/slider.dart';
import 'package:flutter_onboarding_ui_concept/widgets/slide_dots.dart';
import 'package:flutter_onboarding_ui_concept/widgets/slide_items/slide_item.dart';

class SliderLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
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
  Widget build(BuildContext context) => topSliderLayout();

  Widget topSliderLayout() => Container(
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: 3,
                  itemBuilder: (ctx, i) => SlideItem(i),
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                        child: GestureDetector(
                          child: Text(
                            _currentPage < 2 ? S.of(context).next : S.of(context).getStarted,
                            style: TextStyle(
                              fontFamily: Constants.OPEN_SANS,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                          onTap: () {
                            if(_pageController.page.toInt() < 2){
                              _pageController.nextPage(duration: Duration(
                                  milliseconds: 200), curve: Curves.easeIn);
                            } else {
                              Navigator.pushReplacementNamed(context, '/homepage');
                            }
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                        child: Visibility(
                          visible: _currentPage < 2,
                          child: GestureDetector(
                            child: Text(
                              S.of(context).skip,
                              style: TextStyle(
                                fontFamily: Constants.OPEN_SANS,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                              ),
                            ),
                            onTap: () {
                              _pageController.animateToPage(2, duration: Duration(
                                  milliseconds: 200), curve: Curves.easeIn);
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomCenter,
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < 3; i++)
                            if (i == _currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      );
}
