part of 'bloc_bloc.dart';

@immutable
sealed class Event {}
class CalculateEvent extends Event {
  final int num1;
  final int num2;

  CalculateEvent(this.num1, this.num2);
}