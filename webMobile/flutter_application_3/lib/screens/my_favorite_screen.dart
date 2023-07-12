import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_application_3/models/shoe.dart';
import 'package:flutter_application_3/provider/shoe_provider.dart';

class MyFavoriteScreen extends StatefulWidget {
  const MyFavoriteScreen({super.key});

  @override
  State<StatefulWidget> createState() => MyFavoriteScreenState();
}

class MyFavoriteScreenState extends State<MyFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    var myFavorite = context.watch<ShoesProvider>().myFavorite;

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Mis Favoritos',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
            ),
            itemCount: myFavorite.length,
            itemBuilder: (context, index) {
              Shoe shoe = myFavorite[index];
              return Card(
                  key: ObjectKey(shoe),
                  color: Colors.white,
                  elevation: 1,
                  child: Column(
                    children: [
                      Image.asset(
                        shoe.image,
                        width: 100,
                        height: 100,
                      ),
                      Text(shoe.title),
                      Text(shoe.price.toString()),
                      Expanded(
                          child: TextButton(
                              onPressed: () {
                                context
                                    .read<ShoesProvider>()
                                    .removeMyFavorite(shoe);
                              },
                              child: Text(
                                'Eliminar',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
                              )))
                    ],
                  ));
            }),
      ),
    );
  }
}
