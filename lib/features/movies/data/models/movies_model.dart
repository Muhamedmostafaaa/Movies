
import '../../domain/enitites/movie.dart';

class MovieModel extends Movie {
  MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.generIds,
      required super.overView,
        /// Todo :check this
      required super.voteAverage,
      required super.relaseDate});



  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      generIds:List<int>.from(json['genre_ids'].map((e) => e)),
      overView: json['overview'],
      voteAverage: json['vote_average'].toDouble(),
      relaseDate: json['release_date']);
}
