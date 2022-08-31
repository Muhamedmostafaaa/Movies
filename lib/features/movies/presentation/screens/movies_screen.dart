import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/network/api_constants.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/core/utils/dummy.dart';
import 'package:movies_app/core/utils/fonts_manager.dart';
import 'package:movies_app/core/utils/strings_manager.dart';
import 'package:movies_app/core/utils/values_manager.dart';
import 'package:movies_app/features/movies/presentation/components/bottom_nav_bar_component.dart';
import 'package:movies_app/features/movies/presentation/components/popular_component.dart';
import 'package:movies_app/features/movies/presentation/components/toprated_component.dart';
import 'package:movies_app/features/movies/presentation/controller/movies_cubit.dart';

import '../../../../core/services/service_locator.dart';
import '../../data/data_source/base_movies_remote_data_source.dart';
import '../../data/repsiotry/movies_repository.dart';
import '../../domain/repository/base_movie_repository.dart';
import '../../domain/use_cases/get_now_playing_movies_usecase.dart';
import '../components/now_playing_component.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return BlocProvider(
      create: (context) => MoviesCubit(sl(), sl(), sl()),
        // ..getNowPlayingMovies()
        // ..getPopularMovies()..getTopRatedMovies(),
      child: BlocBuilder<MoviesCubit, MoviesState>(
        builder: (context, state) {
          var cubit = BlocProvider.of<MoviesCubit>(context);
          return Scaffold(
              body: cubit.screens[cubit.currentindex],
              bottomNavigationBar: BottomNavBarComponent());
        },
      ),
    );
  }
}
