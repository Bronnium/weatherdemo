import '../../../core/app_export.dart';

/// This class is used in the [weathersearchadd_item_widget] screen.
class WeathersearchaddItemModel {
  WeathersearchaddItemModel({
    this.label,
    this.label1,
    this.image,
    this.id,
  }) {
    label = label ?? "19°";
    label1 = label1 ?? "Mid Rain";
    image = image ?? ImageConstant.imgMoonCloudMidRain;
    id = id ?? "";
  }

  String? label;

  String? label1;

  String? image;

  String? id;
}
