part of 'movies_cubit.dart';

abstract class MoviesState  {
  const MoviesState();
}
class MoviesInitial extends MoviesState {}
class GetPlayingMoviesState extends MoviesState{}
class GetPLayingMoviesSucessState extends MoviesState{}
class GetPLayingMoviesErrorState extends MoviesState{}
class ChangeBottomNavBarState extends MoviesState{}
class MoviesGetPopularMoviesSucessState extends MoviesState{}
class GetPopularMoviesErrorState extends MoviesState{}
class GetTopRatedMoviesSucessState extends MoviesState{}
class GetTopRatedMoviesErrorState extends MoviesState{}
class GetDataLoadStateState extends MoviesState{}


