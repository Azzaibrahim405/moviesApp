import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/exception.dart';

import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/movie/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app/features/movie/domain/entities/movie.dart';
import 'package:movie_app/features/movie/domain/repository/base_movies_repository.dart';

class MovieRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository({required this.baseMovieRemoteDataSource});
  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    try {
      final result = await baseMovieRemoteDataSource.getNowPlaying();

      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovie() async {
    try {
      final result = await baseMovieRemoteDataSource.getPopularMovie();

      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.errorModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovie() async {
    try {
      final result = await baseMovieRemoteDataSource.getTopMovie();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.errorModel.statusMessage));
    }
  }
}
