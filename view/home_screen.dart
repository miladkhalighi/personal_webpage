import 'package:flutter/material.dart';
import 'package:personal_webpage/components/app_dimentions.dart';
import 'package:personal_webpage/view/item_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItemIndex = 0;
  int _hoverItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> navigationItems = ["Home", "Services", "About me"];
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: List.generate(navigationItems.length, (index) {
                var currentItem = navigationItems[index];
                return Padding(
                  padding: EdgeInsets.all(AppDimentions.medium),
                  child: ItemNavigationBar(
                    title: currentItem,
                    onTap: () {
                      setState(() {
                        _selectedItemIndex = index;
                      });
                    },
                    onHover: (isActive) {
                      setState(() {
                        _hoverItemIndex = isActive ? index : -1 ;
                      });
                    },
                    hovering: index == _hoverItemIndex ? true : false,
                    selected: index == _selectedItemIndex ? true : false,
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}


