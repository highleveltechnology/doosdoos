part of 'main_nav_cubit.dart';

@immutable
sealed class MainNavState {}

final class MainNavInitial extends MainNavState {}
class MainNavTabChanged extends MainNavState {
  final int newIndex;
   MainNavTabChanged(this.newIndex);
}