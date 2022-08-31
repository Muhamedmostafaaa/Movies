class ApiConstants{

  static const String apiKey='d6786a739169afdfa871c4f643b8eed5';
  static const String nowPlayingMovies='movie/now_playing';
  static const String popularMovies='movie/popular';
  static const String topRatedMovies='movie/top_rated';
  static const String baseURL='https://api.themoviedb.org/3/';
  static const String baseImageUrl='https://image.tmdb.org/t/p/w500/';
  static String imageUrl(String imagePath){
    return "$baseImageUrl$imagePath";
  }
}
