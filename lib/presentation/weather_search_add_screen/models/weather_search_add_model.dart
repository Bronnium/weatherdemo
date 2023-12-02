// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'weathersearchadd_item_model.dart';

/// This class defines the variables used in the [weather_search_add_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WeatherSearchAddModel extends Equatable {
  WeatherSearchAddModel({this.weathersearchaddItemList = const []}) {}

  List<WeathersearchaddItemModel> weathersearchaddItemList;

  WeatherSearchAddModel copyWith(
      {List<WeathersearchaddItemModel>? weathersearchaddItemList}) {
    return WeatherSearchAddModel(
      weathersearchaddItemList:
          weathersearchaddItemList ?? this.weathersearchaddItemList,
    );
  }

  @override
  List<Object?> get props => [weathersearchaddItemList];
}
