import 'package:dartz/dartz.dart';
import '../../../../core/error/failuer.dart';
import '../enitites/movie.dart';
import '../repository/base_movie_repository.dart';

class GetTopRatedMoviesUseCase{
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUseCase(this.baseMovieRepository);
  Future<Either<Failuer,List<Movie>>>execute()async{
    return await baseMovieRepository.getTobRatedMoves();
  }
}