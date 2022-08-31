import 'package:get_it/get_it.dart';
import 'package:movies_app/features/movies/data/data_source/base_movies_remote_data_source.dart';
import 'package:movies_app/features/movies/data/repsiotry/movies_repository.dart';
import 'package:movies_app/features/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_app/features/movies/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/features/movies/domain/use_cases/get_popular_movies_usecase.dart';
import 'package:movies_app/features/movies/domain/use_cases/get_toprated_usecase.dart';

final sl = GetIt.instance;
class ServiceLocator{
  void init(){




    ///USE CASE
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));

    ///REPOSITORY
    sl.registerLazySingleton<BaseMovieRepository>(() => MoviesRepository(sl()));
    /// DATA SOURCE
  sl.registerLazySingleton<BaseMoviesRemoteDataSource>(() => MoviesRemoteDataSource());
  }


}