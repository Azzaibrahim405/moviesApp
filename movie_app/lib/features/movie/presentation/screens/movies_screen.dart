import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:movie_app/features/movie/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app/features/movie/data/repository/movie_repository.dart';
import 'package:movie_app/features/movie/domain/entities/movie.dart';
import 'package:movie_app/features/movie/domain/repository/base_movies_repository.dart';
import 'package:movie_app/features/movie/domain/usecases/get_now_playing_usecase.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  List<Movie> movies = [];
  void getData() async {
    final BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();
    final BaseMoviesRepository baseMoviesRepository =
        MovieRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);

    final result =
        await GetNowPlayingUsecase(baseMoviesRepository: baseMoviesRepository)
            .excute();
    result.fold(
      (l) {
        print(l);
      },
      (r) {
        movies = r;
        log(r.toString());
      },
    );
    print(result);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
