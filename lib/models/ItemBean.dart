import 'package:json_annotation/json_annotation.dart';

import 'AttBean.dart';
import 'TagBean.dart';

part 'ItemBean.g.dart';

@JsonSerializable()
class ItemBean {
  ItemBean();

  AttBean att;
  int imgWidth;
  String link;
  int totalInventory;
  int sort;
  String title;
  String type;
  bool soldOut;
  String flagUrl;
  String hotAreaName;
  String imgUrl;
  String takeMsg;
  String mdp;
  int imgHeight;
  String linkType;
  dynamic itemList;
  String crossBorderTag;
  int id;
  String countryTag;

  factory ItemBean.fromJson(Map<String, dynamic> json) =>
      _$ItemBeanFromJson(json);

  Map<String, dynamic> toJson() => _$ItemBeanToJson(this);
}

