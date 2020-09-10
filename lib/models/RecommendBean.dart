import 'package:json_annotation/json_annotation.dart';

import 'ItemBean.dart';

part 'RecommendBean.g.dart';

@JsonSerializable()
class RecommendBean {
  RecommendBean();

  String name;
  String wxMiniHotAreaModule;
  List<ItemBean> itemList;
  int id;
  dynamic sort;
  String type;
  String url;
  String key;
  String desc;

  factory RecommendBean.fromJson(Map<String, dynamic> json) =>
      _$RecommendBeanFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendBeanToJson(this);
}
