class Movie {
  final String image;
  final int id;
  final String title;
  final List<int> generIds;
  final String overView;
  final double voteAverage;

  Movie({
    required this.image,
    required this.id,
    required this.title,
    required this.generIds,
    required this.overView,
    required this.voteAverage,
  });
}
