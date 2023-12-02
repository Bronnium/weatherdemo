import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:lucas_s_application2/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
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
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.gradientBlueGrayToGray,
            child: SizedBox(
              height: 709.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 352.adaptSize,
                      width: 352.adaptSize,
                      margin: EdgeInsets.only(top: 33.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          176.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0.5),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.deepPurple60001.withOpacity(0),
                            appTheme.deepPurple60001.withOpacity(0),
                            appTheme.deepPurple600,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup3,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 51.v),
                          Text(
                            "lbl_montreal".tr,
                            style: theme.textTheme.displaySmall,
                          ),
                          Text(
                            "lbl_19".tr,
                            style: CustomTextStyles.sFProDisplayWhiteA700,
                          ),
                          SizedBox(
                            width: 115.h,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_mostly_clear".tr,
                                    style:
                                        CustomTextStyles.titleLargeIndigo5001,
                                  ),
                                  TextSpan(
                                    text: "lbl_h_24_l_18".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 22.v),
                          SizedBox(
                            height: 540.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 500.v,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        30.h,
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, -0.16),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.blueGray80001.withOpacity(0),
                                          appTheme.blueGray80001,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgHouse43,
                                  height: 390.adaptSize,
                                  width: 390.adaptSize,
                                  alignment: Alignment.topCenter,
                                ),
                                _buildModal(context),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildModal(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder44,
        ),
        child: Container(
          height: 325.v,
          width: double.maxFinite,
          decoration: AppDecoration.gradientBlueGrayToGray900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder44,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 250.v,
                width: 199.h,
                alignment: Alignment.centerRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse4,
                height: 41.v,
                width: 347.h,
                alignment: Alignment.bottomRight,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUvIndex,
                            height: 1.v,
                            width: 164.h,
                          ),
                          Container(
                            height: 1.v,
                            width: 166.h,
                            decoration: AppDecoration.outlineWhiteA,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSunrise,
                              height: 1.v,
                              width: 164.h,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 253.v),
                      Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: _buildRow(
                          context,
                          fEELSLIKE: ImageConstant.imgWind,
                          hUMIDITY: ImageConstant.imgRainfall,
                        ),
                      ),
                      SizedBox(height: 427.v),
                      Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: _buildRow(
                          context,
                          fEELSLIKE: ImageConstant.imgFeelsLike,
                          hUMIDITY: ImageConstant.imgHumidity,
                        ),
                      ),
                      SizedBox(height: 601.v),
                      Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: _buildRow(
                          context,
                          fEELSLIKE: ImageConstant.imgVisibility,
                          hUMIDITY: ImageConstant.imgPressure,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 91.v,
                  width: 348.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 91.v,
                          width: 342.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              22.h,
                            ),
                            border: Border.all(
                              color: appTheme.whiteA700.withOpacity(0.5),
                              width: 1.h,
                              strokeAlign: strokeAlignOutside,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWidgets,
                        height: 91.v,
                        width: 348.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.gradientBlueGrayToGray900.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL44,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Divider(
                        indent: 48.h,
                        endIndent: 56.h,
                      ),
                      SizedBox(height: 8.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgIndicator,
                        height: 5.v,
                        width: 48.h,
                        radius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_hourly_forecast".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            Text(
                              "lbl_weekly_forecast".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.v),
                      SizedBox(
                        height: 3.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Divider(
                                  color: appTheme.whiteA700.withOpacity(0.3),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.v),
                      SizedBox(
                        height: 260.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse1250x119,
                              height: 250.v,
                              width: 119.h,
                              alignment: Alignment.topRight,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                                  return Container(
                                    height: 146.v,
                                    width: 370.h,
                                    margin: EdgeInsets.only(top: 4.v),
                                    child: TableCalendar(
                                      locale: 'en_US',
                                      firstDay:
                                          DateTime(DateTime.now().year - 5),
                                      lastDay:
                                          DateTime(DateTime.now().year + 5),
                                      calendarFormat: CalendarFormat.month,
                                      rangeSelectionMode:
                                          state.rangeSelectionMode,
                                      startingDayOfWeek:
                                          StartingDayOfWeek.sunday,
                                      headerStyle: HeaderStyle(
                                        formatButtonVisible: false,
                                        titleCentered: true,
                                      ),
                                      calendarStyle: CalendarStyle(
                                        outsideDaysVisible: false,
                                        isTodayHighlighted: true,
                                      ),
                                      daysOfWeekStyle: DaysOfWeekStyle(),
                                      headerVisible: false,
                                      focusedDay:
                                          state.focusedDay ?? DateTime.now(),
                                      rangeStartDay: state.rangeStart,
                                      rangeEndDay: state.rangeEnd,
                                      onDaySelected: (selectedDay, focusedDay) {
                                        if (!isSameDay(
                                            state.selectedDay, selectedDay)) {
                                          state.focusedDay = focusedDay;
                                          state.selectedDay = selectedDay;
                                          state.rangeSelectionMode =
                                              RangeSelectionMode.toggledOn;
                                        }
                                      },
                                      onRangeSelected:
                                          (start, end, focusedDay) {
                                        state.focusedDay = focusedDay;
                                        state.rangeEnd = end;
                                        state.rangeStart = start;
                                        state.rangeSelectionMode =
                                            RangeSelectionMode.toggledOn;
                                      },
                                      onPageChanged: (focusedDay) {
                                        state.focusedDay = focusedDay;
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 66.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 97.h,
                                  vertical: 12.v,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgFront,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 12.v),
                                    Container(
                                      padding: EdgeInsets.all(3.h),
                                      decoration: AppDecoration
                                          .gradientBlackToWhiteA
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder32,
                                      ),
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1.h,
                                          ),
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder29,
                                        ),
                                        child: Container(
                                          height: 58.adaptSize,
                                          width: 58.adaptSize,
                                          decoration: AppDecoration
                                              .gradientGrayToGray
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder29,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 58.adaptSize,
                                                  width: 58.adaptSize,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      29.h,
                                                    ),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment(0.08, 0.18),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.whiteA700
                                                            .withOpacity(0),
                                                        appTheme.gray400,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgSymbol,
                                                height: 34.v,
                                                width: 27.h,
                                                alignment: Alignment.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String fEELSLIKE,
    required String hUMIDITY,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: fEELSLIKE,
            height: 1.v,
            width: 164.h,
            margin: EdgeInsets.only(right: 7.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: hUMIDITY,
            height: 1.v,
            width: 164.h,
            margin: EdgeInsets.only(left: 7.h),
          ),
        ),
      ],
    );
  }
}
