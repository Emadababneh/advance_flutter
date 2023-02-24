

import 'package:advance_flutter/presentation/login/login_view.dart';
import 'package:advance_flutter/presentation/main/main_view.dart';
import 'package:advance_flutter/presentation/resources/strings_manager.dart';
import 'package:advance_flutter/presentation/splash/splash_view.dart';
import 'package:flutter/material.dart';

import '../forgot_password/forgot_password.dart';
import '../onboarding/onbaording_view.dart';
import '../register/register_view.dart';
import '../store_details/store_details_view.dart';

class Routes{
static  const String splashRouts="/";
static  const String loginRouts="/login";
static  const String registerRouts="/register";
static  const String forgetPasswordRouts="/forgetPassword";
static  const String onBoardingRouts="/onBoarding";
static  const String mainRouts="/main";
static  const String storeDetailRouts="/storeDetail";

}

class RouteGenerator{
  static Route<dynamic> getRouts(RouteSettings settings){
   switch(settings.name){
     case Routes.splashRouts:
       return MaterialPageRoute(builder: (_)=>const SplashView());
     case Routes.loginRouts:
       return MaterialPageRoute(builder: (_)=>const LoginView());
     case Routes.registerRouts:
       return MaterialPageRoute(builder: (_)=>const RegisterView());
     case Routes.forgetPasswordRouts:
       return MaterialPageRoute(builder: (_)=>const ForgotPasswordView());
     case Routes.onBoardingRouts:
       return MaterialPageRoute(builder: (_)=>const OnBoardingView());
     case Routes.mainRouts:
       return MaterialPageRoute(builder: (_)=>const MainView());
     case Routes.storeDetailRouts:
       return MaterialPageRoute(builder: (_)=>const StoreDetailsView());
     default:
       return unDefinedRoute();
   }
  }
  static Route<dynamic> unDefinedRoute(){//todo check my usage
    return MaterialPageRoute(builder: (_)=>
    Scaffold(
      appBar: AppBar(title:const Text(AppStrings.noRouteFound),),//todo move this string manager
      body:const Center(
        child: Text(AppStrings.noRouteFound),//todo move this string manager
      ),
    ));

  }
}