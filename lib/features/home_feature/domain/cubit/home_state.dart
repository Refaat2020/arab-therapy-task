part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
class HomePaginatedLoading extends HomeState {}
class HomeDone extends HomeState {}
class HomeEmpty extends HomeState {}
class HomeError extends HomeState {
  final String?error;

  HomeError({this.error});
}
