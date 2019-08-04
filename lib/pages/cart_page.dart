import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/cartP.dart';
import '../model/cartInfoM.dart';
import './cart_page/cart_item.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '购物车',
        ),
      ),
      body: FutureBuilder(
        future: _getCartInfo(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<CartInfoModel> cartList =
                Provide.value<CartProvide>(context).cartList;

            return ListView.builder(
              itemCount: cartList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: CartItem(cartList[index]),
                );
              },
            );
          } else {
            return Text('loading');
          }
        },
      ),
    );
  }

  Future<String> _getCartInfo(BuildContext context) async {
    await Provide.value<CartProvide>(context).getCartInfo();
    return 'end';
  }
}
