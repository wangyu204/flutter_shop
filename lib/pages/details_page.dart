import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/details_infoP.dart';

class DetailsPage extends StatelessWidget {
  final String goodsId;

  DetailsPage(this.goodsId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('detail page'),
      ),
      body: FutureBuilder(
        future: _getBackInfo(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: Column(
                children: <Widget>[
                  Text('shopId:$goodsId'),
                ],
              ),
            );
          } else {
            return Text('loading');
          }
        },
      ),
    );
  }

  Future _getBackInfo(BuildContext context) async {
    await Provide.value<DetailsInfoProvide>(context).getGoodsInfo(goodsId);

    return 'finish load';
  }
}
