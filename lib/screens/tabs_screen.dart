import 'package:flutter/material.dart';

import './favorites.screen.dart';
import './category_screen.dart';

class TabsScreen extends StatefulWidget {
  // const TabsScreen({ Key? key }) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
              Tab(
                icon: Icon(Icons.downhill_skiing),
                text: 'Going Skiing',
              ),
              Tab(
                icon: Icon(Icons.add_moderator),
                text: 'Going Skiing',
              ),
              Tab(
                icon: Icon(Icons.upcoming),
                text: 'Going Skiing',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            Favorites(),
            CategoriesScreen(),
            Favorites(),
            CategoriesScreen()
          ],
        ),
      ),
    );
  }
}
