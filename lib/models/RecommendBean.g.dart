// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RecommendBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendBean _$RecommendBeanFromJson(Map<String, dynamic> json) {
  var itemBeanJson = json['itemList'] as List;
  return RecommendBean()
    ..name = json['name'] as String
    ..wxMiniHotAreaModule = json['wxMiniHotAreaModule']
    ..itemList = itemBeanJson.map((e) => ItemBean.fromJson(e)).toList()
    ..id = json['id'] as int
    ..sort = json['sort']
    ..type = json['type'] as String
    ..url = json['url']
    ..key = json['key'] as String
    ..desc = json['desc'] as String;
}

Map<String, dynamic> _$RecommendBeanToJson(RecommendBean instance) =>
    <String, dynamic>{
      'name': instance.name,
      'wxMiniHotAreaModule': instance.wxMiniHotAreaModule,
      'itemList': instance.itemList,
      'id': instance.id,
      'sort': instance.sort,
      'type': instance.type,
      'url': instance.url,
      'key': instance.key,
      'desc': instance.desc,
    };
