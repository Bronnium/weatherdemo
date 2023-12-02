// ignore_for_file: must_be_immutable

part of 'weather_search_add_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WeatherSearchAdd widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WeatherSearchAddEvent extends Equatable {}

/// Event that is dispatched when the WeatherSearchAdd widget is first created.
class WeatherSearchAddInitialEvent extends WeatherSearchAddEvent {
  @override
  List<Object?> get props => [];
}
