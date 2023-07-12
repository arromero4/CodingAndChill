import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/my_favorite_screen.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_application_3/models/shoe.dart';
import 'package:flutter_application_3/provider/shoe_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var myFavorite = context.watch<ShoesProvider>().myFavorite;
    var shoes = context.watch<ShoesProvider>().shoes;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Producto',
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: [
          badges.Badge(
              position: badges.BadgePosition.topEnd(top: 5, end: 5),
              badgeContent: Text(
                myFavorite.length.toString(),
                style: TextStyle(color: Colors.white),
              ),
              badgeStyle: badges.BadgeStyle(
                badgeColor: Colors.redAccent,
              ),
              child: IconButton(
                icon: Icon(Icons.bookmark, color: Colors.blueGrey),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyFavoriteScreen()));
                },
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: shoes.length,
            itemBuilder: (context, index) {
              Shoe shoe = shoes[index];
              return Card(
                  key: ObjectKey(shoe),
                  color: Colors.white,
                  elevation: 1,
                  child: ListTile(
                      contentPadding: const EdgeInsets.all(4),
                      leading: Image.asset(shoe.image),
                      title: Text(shoe.title),
                      subtitle: Text("\$${shoe.price.toString()} "),
                      trailing: IconButton(
                        icon: Icon(Icons.bookmark,
                            color: myFavorite.contains(shoe)
                                ? Colors.redAccent
                                : Colors.grey),
                        onPressed: () {
                          if (!myFavorite.contains(shoe)) {
                            context.read<ShoesProvider>().addToMyFavorite(shoe);
                          } else {
                            context
                                .read<ShoesProvider>()
                                .removeMyFavorite(shoe);
                          }
                        },
                      )));
            }),
      ),
    );
  }
}
