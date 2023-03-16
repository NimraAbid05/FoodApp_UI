import 'package:flutter/material.dart';
import 'package:pactice_work/notification%20service/notifications.dart';

import 'package:pactice_work/views/cart_view.dart';
import 'package:pactice_work/views/favourite_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  final NotificationService notificationService = NotificationService();

  void initState() {
    super.initState();
    notificationService.initializeNotification();
  }

  List<Map> products = [
    {
      "name": "Pizza",
      "price": "Rs 1000",
      "isfavourite": false,
      "iscart": false
    },
    {
      "name": "Burger",
      "price": "Rs 400",
      "isfavourite": false,
      "iscart": false
    },
    {
      "name": "Cold drink",
      "price": "Rs 100",
      "isfavourite": false,
      "iscart": false
    },
    {
      "name": "Sandwish",
      "price": "Rs 200",
      "isfavourite": false,
      "iscart": false
    },
    {
      "name": "Club sandwish",
      "price": "Rs 400",
      "isfavourite": false,
      "iscart": false
    },
    {
      "name": "Chicken roll",
      "price": "Rs 200",
      "isfavourite": false,
      "iscart": false
    },
    {"name": "Chat", "price": "Rs 100", "isfavourite": false, "iscart": false},
    {
      "name": "Zinger roll",
      "price": "Rs 300",
      "isfavourite": false,
      "iscart": false
    },
    {"name": "BBQ", "price": "Rs 1000", "isfavourite": false, "iscart": false},
    {"name": "Fries", "price": "Rs 100", "isfavourite": false, "iscart": false},
    {"name": "Pasta", "price": "Rs 100", "isfavourite": false, "iscart": false},
  ];

  List<Map> favouriteitem = [];
  List<Map> cartitem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Favourite_View(fav: favouriteitem)));
          },
          child: Text("Favourite"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartView(favcart: cartitem)));
          },
          child: Text("Cart"),
        ),
      ],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hunger Bites"),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text(products[index]["name"]),
              subtitle: Text(products[index]["price"]),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        if (products[index]["iscart"] == false) {
                          cartitem.add(products[index]);

                          notificationService.sendnotification("Yahoo", "Added to cart");
                          setState(() {
                            products[index]["iscart"] = true;
                          });
                        } else {
                          cartitem.remove(products[index]);
                          setState(() {
                            products[index]["iscart"] = false; //command change
                          });
                        }
                      },
                      icon: Icon(Icons.card_travel,
                          color: products[index]["iscart"]
                              ? Colors.blue
                              : Colors.black)),
                  IconButton(
                    onPressed: () {
                      if (products[index]["isfavourite"] == false) {
                        favouriteitem.add(products[index]);
                        setState(() {
                          products[index]["isfavourite"] = true;
                        });
                         notificationService.sendnotification("Yahoo", "Added to favourite");
                      } else {
                        favouriteitem.remove(products[index]);
                        setState(() {
                          products[index]["isfavourite"] =
                              false; //command change
                        });
                      }
                    },
                    icon: Icon(Icons.favorite,
                        color: products[index]["isfavourite"]
                            ? Colors.red
                            : Colors.black),
                  ),
                ],
              ),
            );
          })),
    );
  }
}
