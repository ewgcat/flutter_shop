// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ItemBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemBean _$ItemBeanFromJson(Map<String, dynamic> json) {
  return ItemBean()
    ..att = json['att'] == null
        ? null
        : AttBean.fromJson(json['att'] as Map<String, dynamic>)
    ..imgWidth = json['imgWidth'] as int
    ..link = json['link'] as String
    ..totalInventory = json['totalInventory'] as int
    ..sort = json['sort'] as int
    ..title = json['title'] as String
    ..type = json['type'] as String
    ..soldOut = json['soldOut'] as bool
    ..flagUrl = json['flagUrl']
    ..hotAreaName = json['hotAreaName']
    ..imgUrl = json['imgUrl'] as String
    ..takeMsg = json['takeMsg']
    ..mdp = json['mdp'] as String
    ..imgHeight = json['imgHeight'] as int
    ..linkType = json['linkType'] as String
    ..itemList = json['itemList']
    ..crossBorderTag = json['crossBorderTag']
    ..id = json['id'] as int
    ..countryTag = json['countryTag'];
}

Map<String, dynamic> _$ItemBeanToJson(ItemBean instance) => <String, dynamic>{
      'att': instance.att,
      'imgWidth': instance.imgWidth,
      'link': instance.link,
      'totalInventory': instance.totalInventory,
      'sort': instance.sort,
      'title': instance.title,
      'type': instance.type,
      'soldOut': instance.soldOut,
      'flagUrl': instance.flagUrl,
      'hotAreaName': instance.hotAreaName,
      'imgUrl': instance.imgUrl,
      'takeMsg': instance.takeMsg,
      'mdp': instance.mdp,
      'imgHeight': instance.imgHeight,
      'linkType': instance.linkType,
      'itemList': instance.itemList,
      'crossBorderTag': instance.crossBorderTag,
      'id': instance.id,
      'countryTag': instance.countryTag,
    };

AttBean _$AttBeanFromJson(Map<String, dynamic> json) {
  return AttBean()
    ..marketPrice = (json['marketPrice'] as num)?.toDouble()
    ..salePrice = (json['salePrice'] as num)?.toDouble()
    ..commission = (json['commission'] as num)?.toDouble()
    ..tags = json['tags'] as List;
}

Map<String, dynamic> _$AttBeanToJson(AttBean instance) => <String, dynamic>{
      'marketPrice': instance.marketPrice,
      'salePrice': instance.salePrice,
      'commission': instance.commission,
      'tags': instance.tags,
    };
