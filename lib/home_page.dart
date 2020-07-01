import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './widgets/my_items.dart';
import './widgets/simple_charts.dart';
import './screens/charts_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1976d2),
        title: Text(
          'Staggered Grid View And Charts',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          MyItems(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SimpleCharts(),
                ),
              );
            },
            iconData: Icons.insert_chart,
            text: 'Simple Charts',
            color: Color(0xFFed622b),
          ),
          MyItems(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ChartsScreen(),
                ),
              );
            },
            iconData: FontAwesomeIcons.solidChartBar,
            text: 'Animated Charts',
            color: Color(0xFF26cb3c),
          ),
          MyItems(
            iconData: Icons.notifications,
            text: 'Notifications',
            color: Color(0xFFFF3266),
          ),
          MyItems(
            iconData: Icons.attach_money,
            text: 'Balance',
            color: Color(0xFF3399fe),
          ),
          MyItems(
            iconData: Icons.settings,
            text: 'Settings',
            color: Color(0xFFf4c83f),
          ),
          MyItems(
            iconData: Icons.group_work,
            text: 'Group Work',
            color: Color(0xFF622f74),
          ),
          MyItems(
            iconData: Icons.favorite,
            text: 'Followers',
            color: Color(0xFFad61f1),
          ),
          MyItems(
            iconData: Icons.message,
            text: 'Messages',
            color: Color(0xFF7297ff),
          ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 250.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(2, 240.0),
          StaggeredTile.extent(2, 120.0),
        ],
      ),
    );
  }
}
