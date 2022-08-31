import 'package:dartz/dartz.dart';
import '../../../../core/error/failuer.dart';
import '../enitites/movie.dart';

abstract class BaseMovieRepository{
  Future<Either<Failuer,List<Movie>>>getNowPlayingMovies();
  Future<Either<Failuer,List<Movie>>>getPopoularMovies();
  Future<Either<Failuer,List<Movie>>>getTobRatedMoves();

}