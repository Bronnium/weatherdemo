import '../weather_search_add_screen/widgets/weathersearchadd_item_widget.dart';
import 'bloc/weather_search_add_bloc.dart';
import 'models/weather_search_add_model.dart';
import 'models/weathersearchadd_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lucas_s_application2/core/app_export.dart';
import 'package:lucas_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:lucas_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:lucas_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lucas_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:lucas_s_application2/widgets/custom_search_view.dart';

class WeatherSearchAddScreen extends StatelessWidget {
  const WeatherSearchAddScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WeatherSearchAddBloc>(
      create: (context) => WeatherSearchAddBloc(WeatherSearchAddState(
        weatherSearchAddModelObj: WeatherSearchAddModel(),
      ))
        ..add(WeatherSearchAddInitialEvent()),
      child: WeatherSearchAddScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.03, 0.01),
              end: Alignment(0.93, 0.96),
              colors: [
                appTheme.blueGray800,
                appTheme.gray900,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildTopNavigation(context),
                SizedBox(
                  height: 689.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse818,
                        height: 352.v,
                        width: 349.h,
                        alignment: Alignment.topLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse817,
                        height: 365.v,
                        width: 268.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 9.v),
                      ),
                      _buildWeatherSearchAdd(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopNavigation(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomAppBar(
            leadingWidth: 30.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIconChevronLeft,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
                bottom: 3.v,
              ),
            ),
            title: AppbarTitle(
              text: "lbl_weather".tr,
              margin: EdgeInsets.only(left: 9.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgRightTitle,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: BlocSelector<WeatherSearchAddBloc, WeatherSearchAddState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_search_for_a_city".tr,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeatherSearchAdd(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: BlocSelector<WeatherSearchAddBloc, WeatherSearchAddState,
            WeatherSearchAddModel?>(
          selector: (state) => state.weatherSearchAddModelObj,
          builder: (context, weatherSearchAddModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 7.v,
                );
              },
              itemCount:
                  weatherSearchAddModelObj?.weathersearchaddItemList.length ??
                      0,
              itemBuilder: (context, index) {
                WeathersearchaddItemModel model =
                    weatherSearchAddModelObj?.weathersearchaddItemList[index] ??
                        WeathersearchaddItemModel();
                return WeathersearchaddItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
