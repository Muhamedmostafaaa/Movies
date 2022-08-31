import 'package:dartz/dartz.dart';

import '../../../../core/error/excptions.dart';
import '../../../../core/error/failuer.dart';
import '../../domain/enitites/movie.dart';
import '../../domain/repository/base_movie_repository.dart';
import '../data_source/base_movies_remote_data_source.dart';

class MoviesRepository implements BaseMovieRepository{
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;

  MoviesRepository(this.baseMoviesRemoteDataSource);

  @override
  Future<Either<Failuer,List<Movie>>> getNowPlayingMovies()async {
   final result =await  baseMoviesRemoteDataSource.getNowPlayingMovies();
   try{
     return Right(result);
   }on RemoteServerExcption catch(failure){
    return Left(ServerFailuer(failure.erorrMessageModel.statusMessage));
   }
     }

  @override
  Future<Either<Failuer,List<Movie>>> getPopoularMovies()async {
    final result =await  baseMoviesRemoteDataSource.getPopoularMovies();
    try{
      return Right(result);
    }on RemoteServerExcption catch(failure){
      return Left(ServerFailuer(failure.erorrMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failuer,List<Movie>>> getTobRatedMoves()async {
    final result =await  baseMoviesRemoteDataSource.getTobRatedMoves();
    try{
      return Right(result);
    }on RemoteServerExcption catch(failure){
      return Left(ServerFailuer(failure.erorrMessageModel.statusMessage));
    }
  }




}