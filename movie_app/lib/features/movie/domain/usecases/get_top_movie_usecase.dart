import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/movie/domain/entities/movie.dart';
import 'package:movie_app/features/movie/domain/repository/base_movies_repository.dart';

class GetTopMovieUsecase {
  final BaseMoviesRepository baseMoviesRepository;
  GetTopMovieUsecase({required this.baseMoviesRepository});

  Future<Either<Failure, List<Movie>>> excute() async {
    return await baseMoviesRepository.getTopRatedMovie();
  }
}
