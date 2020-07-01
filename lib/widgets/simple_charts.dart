import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/my_first_chart_item.dart';
import '../widgets/my_circular_chart_item.dart';
import '../widgets/my_text_items.dart';
import '../widgets/my_second_chart_item.dart';

class SimpleCharts extends StatefulWidget {
  @override
  _SimpleChartsState createState() => _SimpleChartsState();
}

class _SimpleChartsState extends State<SimpleCharts> {
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  var data1 = [0.0, -2.0, 3.5, -2.0, 0.5, 0.7, 0.8, 1.0, 2.0, 3.0, 3.2];

  List<CircularStackEntry> circularData = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(700.0, Color(0xff4285F4), rankKey: 'Q1'),
        new CircularSegmentEntry(1000.0, Color(0xfff3af00), rankKey: 'Q2'),
        new CircularSegmentEntry(1800.0, Color(0xffec3337), rankKey: 'Q3'),
        new CircularSegmentEntry(1000.0, Color(0xff40b24b), rankKey: 'Q4'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Charts'),
        backgroundColor: Color(0xff1976d2),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.chartLine),
            onPressed: () {
              //
            },
          ),
        ],
      ),
      body: Container(
        color: const Color(0xffE5E5E5),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          // padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyFirstChartItem(
                title: 'Sales by Month',
                priceVal: '421.3M',
                subTitle: '+12.9% of target',
                data: data,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCircularChartItem(
                title: 'Quarterly Profits',
                subTitle: '68.7M',
                circularData: circularData,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: MyTextItems(
                title: 'Mktg. Spend',
                subTitle: '48.6M',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: MyTextItems(
                title: 'Users',
                subTitle: '25.5M',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MySecondChartItem(
                title: 'Conversion',
                priceVal: '0.9M',
                subTitle: '19% of targett',
                data1: data1,
              ),
            ),
          ],
          staggeredTiles: [
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(2, 250.0),
            StaggeredTile.extent(2, 120.0),
            StaggeredTile.extent(2, 120.0),
            StaggeredTile.extent(4, 250.0),
          ],
        ),
      ),
    );
  }
}
