
import '../../../../core/error/excptions.dart';
import '../../../../core/network/api_constants.dart';
import '../../../../core/network/dio_helper.dart';
import '../models/movies_model.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopoularMovies();
  Future<List<MovieModel>> getTobRatedMoves();
}

class MoviesRemoteDataSource implements BaseMoviesRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {

    final response = await DioHelper.getData(
        path: ApiConstants.nowPlayingMovies,
        query: {'api_key': ApiConstants.apiKey});
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw RemoteServerExcption(erorrMessageModel: response.data);
    }
  }

  @override
  Future<List<MovieModel>> getPopoularMovies() async {
    final response = await DioHelper.getData(
        path: ApiConstants.popularMovies,
        query: {'api_key': ApiConstants.apiKey});
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw RemoteServerExcption(erorrMessageModel: response.data);
    }
  }

  @override
  Future<List<MovieModel>> getTobRatedMoves() async {
    final response = await DioHelper.getData(
        path: ApiConstants.topRatedMovies,
        query: {'api_key': ApiConstants.apiKey});
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw RemoteServerExcption(erorrMessageModel: response.data);
    }
  }
}
