import 'package:json_annotation/json_annotation.dart';


part 'TagBean.g.dart';

@JsonSerializable()
class TagBean {
      TagBean();

  String tagValue;
  int tagType;

  factory TagBean.fromJson(Map<String,dynamic> json) => _$TagBeanFromJson(json);
  Map<String, dynamic> toJson() => _$TagBeanToJson(this);
}
