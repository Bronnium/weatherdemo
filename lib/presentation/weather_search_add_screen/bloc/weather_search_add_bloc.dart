import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/weathersearchadd_item_model.dart';
import 'package:lucas_s_application2/presentation/weather_search_add_screen/models/weather_search_add_model.dart';
part 'weather_search_add_event.dart';
part 'weather_search_add_state.dart';

/// A bloc that manages the state of a WeatherSearchAdd according to the event that is dispatched to it.
class WeatherSearchAddBloc
    extends Bloc<WeatherSearchAddEvent, WeatherSearchAddState> {
  WeatherSearchAddBloc(WeatherSearchAddState initialState)
      : super(initialState) {
    on<WeatherSearchAddInitialEvent>(_onInitialize);
  }

  List<WeathersearchaddItemModel> fillWeathersearchaddItemList() {
    return [
      WeathersearchaddItemModel(
          label: "19°",
          label1: "Mid Rain",
          image: ImageConstant.imgMoonCloudMidRain),
      WeathersearchaddItemModel(
          label: "20°",
          label1: "Fast Wind",
          image: ImageConstant.imgMoonCloudFast),
      WeathersearchaddItemModel(
          label: "13°",
          label1: "Showers",
          image: ImageConstant.imgSunCloudAngled),
      WeathersearchaddItemModel(
          label: "23°", label1: "Tornado", image: ImageConstant.imgTornado),
      WeathersearchaddItemModel(
          label: "31°",
          label1: "partly Cloudy",
          image: ImageConstant.imgSunCloudMidRain),
      WeathersearchaddItemModel(
          label: "23°",
          label1: "Tornado",
          image: ImageConstant.imgMoonCloudMidRain)
    ];
  }

  _onInitialize(
    WeatherSearchAddInitialEvent event,
    Emitter<WeatherSearchAddState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        weatherSearchAddModelObj: state.weatherSearchAddModelObj?.copyWith(
      weathersearchaddItemList: fillWeathersearchaddItemList(),
    )));
  }
}
