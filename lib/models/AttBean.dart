import 'package:json_annotation/json_annotation.dart';

import 'TagBean.dart';


part 'AttBean.g.dart';

@JsonSerializable()
class AttBean {
      AttBean();

  double marketPrice;
  double salePrice;
  double commission;
  List<TagBean> tags;

  factory AttBean.fromJson(Map<String,dynamic> json) => _$AttBeanFromJson(json);
  Map<String, dynamic> toJson() => _$AttBeanToJson(this);
}
