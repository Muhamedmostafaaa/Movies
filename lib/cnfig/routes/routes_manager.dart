import 'package:flutter/material.dart';

class Routes{
static const String splashRoute='/';
static const String moviesRoute='/movies';
static const String searchRoute='/search';
static const String browseRoute='/browse';
static const String watchListRoute='/watchlist';}

// class RouteGenerator{
//
// static Route<dynamic>getRoute(RouteSettings settings){
// switch(settings.name){
// case Routes.splashRoute:
// return MaterialPageRoute(builder: (_)=>const SplashView());
// case Routes.loginRoute:
// return MaterialPageRoute(builder: (_)=>const LoginView());
// case Routes.onBoardingRoute:
// return MaterialPageRoute(builder: (_)=> const OnBoardingView());
// case Routes.registerRoute:
// return MaterialPageRoute(builder:(_)=>const RegisterView());
// case Routes.forgetPasswordRoute:
// return MaterialPageRoute(builder: (_)=>const ForgetPasswordview());
// case Routes.storeDetailsRoute:
// return MaterialPageRoute(builder: (_)=>const StoreDetailsView());
// default:
// return unDifendRoute();
// }
// }
// static Route<dynamic>unDifendRoute(){
// return MaterialPageRoute(builder:(_)=>Scaffold(
//
// appBar:AppBar(title:const Text(AppStrings.noRouteFound)),
// body:const Center(child: Text(AppStrings.noRouteFound)),
//
// )
// }
//



