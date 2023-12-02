import '../models/weathersearchadd_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lucas_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class WeathersearchaddItemWidget extends StatelessWidget {
  WeathersearchaddItemWidget(
    this.weathersearchaddItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WeathersearchaddItemModel weathersearchaddItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 197.v,
        width: 342.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 18.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup4,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 21.v),
                    Text(
                      weathersearchaddItemModelObj.label!,
                      style: theme.textTheme.displayLarge,
                    ),
                    SizedBox(height: 7.v),
                    Row(
                      children: [
                        SizedBox(
                          width: 134.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_h_24_l_182".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "msg_montreal_canada".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 111.h,
                            top: 22.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            weathersearchaddItemModelObj.label1!,
                            style: CustomTextStyles.bodyMediumWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: weathersearchaddItemModelObj?.image,
              height: 160.adaptSize,
              width: 160.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 4.h),
            ),
          ],
        ),
      ),
    );
  }
}
