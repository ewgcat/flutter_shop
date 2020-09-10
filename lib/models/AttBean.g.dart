// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AttBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttBean _$AttBeanFromJson(Map<String, dynamic> json) {
  var tagBeansJson = json['tags'] as List;
  return AttBean()
    ..marketPrice = (json['marketPrice'] as num)?.toDouble()
    ..salePrice = (json['salePrice'] as num)?.toDouble()
    ..commission = (json['commission'] as num)?.toDouble()
    ..tags = tagBeansJson.map((e) => TagBean.fromJson(e)).toList();
}

Map<String, dynamic> _$AttBeanToJson(AttBean instance) => <String, dynamic>{
      'marketPrice': instance.marketPrice,
      'salePrice': instance.salePrice,
      'commission': instance.commission,
      'tags': instance.tags,
    };
