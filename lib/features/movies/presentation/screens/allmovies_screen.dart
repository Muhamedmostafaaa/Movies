import 'package:flutter/material.dart';

import '../../../../core/utils/values_manager.dart';
import '../components/now_playing_component.dart';
import '../components/popular_component.dart';
import '../components/toprated_component.dart';

class AllMoviesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NowPlayingComponent(),
         const SizedBox(
            height: AppSize.s20,
          ),
          PopularComponent(),
         const SizedBox(
            height: AppSize.s20,
          ),
          TopRatedComponent(),

        ],
      ),
    );
  }



}