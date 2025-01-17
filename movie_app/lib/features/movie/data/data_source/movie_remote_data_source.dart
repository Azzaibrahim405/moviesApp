import 'package:dio/dio.dart';
import 'package:movie_app/core/error/exception.dart';
import 'package:movie_app/core/network/api_constance.dart';
import 'package:movie_app/core/network/error_message_model.dart';
import 'package:movie_app/features/movie/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlaying();
  Future<List<MovieModel>> getPopularMovie();

  Future<List<MovieModel>> getTopMovie();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlaying() async {
    final response = await Dio().get(ApiConstance.nowPlayingMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data['results'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.fromMJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovie() async {
    final response = await Dio().get(ApiConstance.popularMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data['result'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.fromMJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopMovie() async {
    final response = await Dio().get(ApiConstance.topRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data['result'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.fromMJson(response.data));
    }
  }
}
