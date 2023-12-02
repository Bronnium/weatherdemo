// ignore_for_file: must_be_immutable

part of 'weather_search_add_bloc.dart';

/// Represents the state of WeatherSearchAdd in the application.
class WeatherSearchAddState extends Equatable {
  WeatherSearchAddState({
    this.searchController,
    this.weatherSearchAddModelObj,
  });

  TextEditingController? searchController;

  WeatherSearchAddModel? weatherSearchAddModelObj;

  @override
  List<Object?> get props => [
        searchController,
        weatherSearchAddModelObj,
      ];
  WeatherSearchAddState copyWith({
    TextEditingController? searchController,
    WeatherSearchAddModel? weatherSearchAddModelObj,
  }) {
    return WeatherSearchAddState(
      searchController: searchController ?? this.searchController,
      weatherSearchAddModelObj:
          weatherSearchAddModelObj ?? this.weatherSearchAddModelObj,
    );
  }
}
