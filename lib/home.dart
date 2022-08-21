import 'package:flutter/material.dart';
import 'package:food_tut/recipe/recipe_ls.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    RecipeList(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipes',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Recipes',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Bookmark',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Groceries',
          ),
        ],
      ),
    );
  }
}
