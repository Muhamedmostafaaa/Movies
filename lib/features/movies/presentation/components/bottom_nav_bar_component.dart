import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/utils/strings_manager.dart';
import 'package:movies_app/features/movies/presentation/controller/movies_cubit.dart';

class BottomNavBarComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

        return BlocBuilder<MoviesCubit,MoviesState>(
          builder: (context,State){
            var cubit= BlocProvider.of<MoviesCubit>(context);
            return BottomNavigationBar(
              currentIndex: cubit.currentindex,

              onTap: (index){

               cubit.changeBottomNavBarState(index);

              },

              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon:  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SvgPicture.asset('assets/images/home_icon.svg',),
                  ), label: AppStrings.homeIcon,),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset('assets/images/search_icon.svg'),
                    ),
                    label: AppStrings.searchIcon),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset('assets/images/browse_icon.svg'),
                    ), label: AppStrings.browseIcon),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset('assets/images/watchlist_icon.svg'),
                    ), label: AppStrings.watchListIcon),
              ],
            );
          },

        );



  }



}