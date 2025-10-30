part of 'bloc_bloc.dart';

@immutable
sealed class AppState {}

final class Initial extends AppState {}
final class Calculated extends AppState {
  final int sum;
  Calculated(this.sum);
}
