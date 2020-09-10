// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TagBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagBean _$TagBeanFromJson(Map<String, dynamic> json) {
  return TagBean()
    ..tagValue = json['tagValue'] as String
    ..tagType = json['tagType'] as int;
}

Map<String, dynamic> _$TagBeanToJson(TagBean instance) => <String, dynamic>{
      'tagValue': instance.tagValue,
      'tagType': instance.tagType,
    };
