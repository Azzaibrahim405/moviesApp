import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/movie/domain/entities/movie.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlaying();
  Future<Either<Failure, List<Movie>>>  getPopularMovie();
  Future<Either<Failure, List<Movie>>> getTopRatedMovie();
}
