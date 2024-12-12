import 'package:equatable/equatable.dart';

abstract class MoviesEvents extends Equatable{
const MoviesEvents();
}
class GetNowPlayingEvent extends MoviesEvents{
  @override
  List<Object?> get props => throw UnimplementedError();
}
class GetPopularEvent extends MoviesEvents{
  @override
  List<Object?> get props => throw UnimplementedError();
}
class GetTopRatedEvent extends MoviesEvents{
  @override
  List<Object?> get props => throw UnimplementedError();
}