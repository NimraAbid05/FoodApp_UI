import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartView extends StatelessWidget {
  List<Map> favcart;
  CartView({super.key, required this.favcart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: ListView.builder(
        itemCount: favcart.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(favcart[index]['name']),
        );
      }),
    );
  }
}
