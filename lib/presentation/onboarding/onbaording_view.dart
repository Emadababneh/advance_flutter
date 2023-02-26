import 'package:advance_flutter/presentation/resources/color_manager.dart';
import 'package:advance_flutter/presentation/resources/strings_manager.dart';
import 'package:advance_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/assets_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController=PageController();
  late final List <SliderObject> _list=_getSliderData();
  List<SliderObject> _getSliderData()=>[
    SliderObject(AppStrings.onBoardingTitle1, AppStrings.onBoardingSubTitle1, AssetsManager.onboardingLogo1),
    SliderObject(AppStrings.onBoardingTitle2, AppStrings.onBoardingSubTitle2, AssetsManager.onboardingLogo2),
    SliderObject(AppStrings.onBoardingTitle3, AppStrings.onBoardingSubTitle3, AssetsManager.onboardingLogo3),
    SliderObject(AppStrings.onBoardingTitle4, AppStrings.onBoardingSubTitle4, AssetsManager.onboardingLogo4),
  ];
  int _currentPageIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManage.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManage.white,
        statusBarBrightness: Brightness.dark),

      ),
      body: PageView.builder(
         controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index){
           _currentPageIndex=index;
          },
          itemBuilder: (context,index){
           return;
          }),
    );
  }
}
class OnBoardingPage extends StatelessWidget {
 final SliderObject sliderObject;
  const OnBoardingPage({ required this.sliderObject,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      const  SizedBox(height: AppSize.s40, ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
              sliderObject.title,
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.displayLarge ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
              sliderObject.subTitle,
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.displayLarge ),
        ),

      ],
    );
  }
}

class SliderObject{
  String title;
  String subTitle;
  String image;

  SliderObject(this.title,this.subTitle,this.image);

}