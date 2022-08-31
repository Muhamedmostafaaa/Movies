import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/features/movies/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/features/movies/domain/use_cases/get_popular_movies_usecase.dart';
import 'package:movies_app/features/movies/domain/use_cases/get_toprated_usecase.dart';
import 'package:movies_app/features/movies/presentation/screens/allmovies_screen.dart';
import 'package:movies_app/features/movies/presentation/screens/browse_screen.dart';
import 'package:movies_app/features/movies/presentation/screens/movies_screen.dart';
import 'package:movies_app/features/movies/presentation/screens/search_screen.dart';
import 'package:movies_app/features/movies/presentation/screens/watchlist_screen.dart';

import '../../domain/enitites/movie.dart';

part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  List<Movie> nowPlayingMovies = [];
  List<Movie> popularMovies = [];
  List<Movie> topRatedMovies = [];

  int currentindex = 0;
  String nowPlayingMessage = '';
  String popularMessage = '';
  String topRatedMessage = '';
  List<Widget> screens = [
    AllMoviesScreen(),
    SearchScreen(),
    BrowseScreen(),
    WatchlistScreen()
  ];

  MoviesCubit(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase,
      this.getTopRatedMoviesUseCase)
      : super(MoviesInitial());
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  void getNowPlayingMovies() async {
    final reuslt = await getNowPlayingMoviesUseCase.execute();
    reuslt.fold((l) {
      nowPlayingMessage = l.erorrMessage;
      emit(GetPLayingMoviesErrorState());
    }, (r) {
      nowPlayingMovies = r;
      emit(GetPLayingMoviesSucessState());
    });
  }

  void changeBottomNavBarState(int index) {
    currentindex = index;
    emit(ChangeBottomNavBarState());
  }

  void getPopularMovies() async {
    final result = await getPopularMoviesUseCase.execute();
    result.fold((l) {
      popularMessage = l.erorrMessage;
      emit(GetPopularMoviesErrorState());
    }, (r) {
      popularMovies = r;
      emit(MoviesGetPopularMoviesSucessState());
    });
  }

  void getTopRatedMovies() async {
    final result = await getTopRatedMoviesUseCase.execute();
    result.fold((l) {
      topRatedMessage = l.erorrMessage;
      emit(GetTopRatedMoviesErrorState());
    }, (r) {
      topRatedMovies = r;
      emit(GetTopRatedMoviesSucessState());
    });
  }
}
