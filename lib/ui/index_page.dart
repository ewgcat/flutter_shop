import 'package:flutter/material.dart';
import 'package:flutter_shop/models/ItemBean.dart';
import 'package:flutter_shop/widget/TileCard.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_shop/models/RecommendBean.dart';
import 'package:logger/logger.dart';
import 'package:flutter_shop/net/DioUtil.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IndexPageState();
  }
}

class _IndexPageState extends State<IndexPage> {
  List<ItemBean> _items = new List();
  int page = 1;
  int pageSize = 1;

  @override
  void initState() {
    super.initState();
    page = 1;
    pageSize = 10;
    getData(page, pageSize);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('首页'),
        ),
        body: _buildItem(context,_items));
  }

  void _refresh() {
    _items.clear();
    page = 1;
    pageSize = 10;
    getData(page, pageSize);
  }

  void _loadMore() {
    page += 1;
    pageSize = 10;
    getData(page, pageSize);
  }

  getData(int page, int pageSize) {
    var params = {
      "platform": 1,
      "terminal": 2,
      "type": "hotRecommend",
      "page": page,
      "limit": pageSize
    };
    DioUtil().post("app/req/shop.ald", data: params, errorCallback: (msg) {
      logger.d('msg : $msg');
    }).then((data) {
      RecommendBean recommendBean = RecommendBean.fromJson(data["data"]);
      setState(() {
        _items.addAll(recommendBean.itemList);
      });
    });
  }
}

Widget _buildItem(BuildContext context, List<ItemBean> _items) {
  return Container(
    color: Colors.grey[100],
    child: StaggeredGridView.countBuilder(
      itemCount: _items.length,
      primary: false,
      crossAxisCount: 4,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      itemBuilder: (context, index) => TileCard(
          img: '${_items[index].imgUrl}',
          title: '${_items[index].title}',
          salePrice: '${_items[index].att.salePrice}',
          marketPrice: '${_items[index].att.marketPrice}',
          commission: _items[index].att.commission),
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
    ),
  );
}
