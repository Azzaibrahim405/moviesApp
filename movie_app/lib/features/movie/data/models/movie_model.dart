import 'package:movie_app/features/movie/domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel({
    required super.image,
    required super.id,
    required super.title,
    required super.generIds,
    required super.overView,
    required super.voteAverage,
  });
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      image: json['backdrop_path'],
      id: json['id'],
      title: json['title'],
      generIds: List<int>.from(json["genre_ids"].map((e) => e)),
      overView: json['overview'],
      voteAverage: json['vote_average'],
    );
  }
}
