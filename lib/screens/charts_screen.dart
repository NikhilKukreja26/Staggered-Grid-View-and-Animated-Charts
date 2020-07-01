import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../models/task_model.dart';
import '../models/pollution_model.dart';
import '../models/sales_model.dart';

class ChartsScreen extends StatefulWidget {
  @override
  _ChartsScreenState createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  List<charts.Series<PollutionModel, String>> _seriesPollutionData;

  List<charts.Series<TaskModel, String>> _seriesPieData;

  List<charts.Series<SalesModel, int>> _seriesLineData;

  _generateData() {
    var pollutionData1 = [
      PollutionModel(
        place: 'USA',
        year: 1980,
        quantity: 30,
      ),
      PollutionModel(
        place: 'Asia',
        year: 1980,
        quantity: 40,
      ),
      PollutionModel(
        place: 'Europe',
        year: 1980,
        quantity: 10,
      ),
    ];

    var pollutionData2 = [
      PollutionModel(
        place: 'USA',
        year: 1985,
        quantity: 100,
      ),
      PollutionModel(
        place: 'Asia',
        year: 1980,
        quantity: 150,
      ),
      PollutionModel(
        place: 'Europe',
        year: 1985,
        quantity: 80,
      ),
    ];

    var pollutionData3 = [
      PollutionModel(
        place: 'USA',
        year: 1985,
        quantity: 200,
      ),
      PollutionModel(
        place: 'Asia',
        year: 1980,
        quantity: 300,
      ),
      PollutionModel(
        place: 'Europe',
        year: 1985,
        quantity: 180,
      ),
    ];

    var pieData = [
      TaskModel(
        task: 'Work',
        taskValue: 35.8,
        colorValue: Color(0xff3366cc),
      ),
      TaskModel(
        task: 'Eat',
        taskValue: 8.3,
        colorValue: Color(0xff990099),
      ),
      TaskModel(
        task: 'Commute',
        taskValue: 10.8,
        colorValue: Color(0xff109618),
      ),
      TaskModel(
        task: 'TV',
        taskValue: 15.6,
        colorValue: Color(0xfffdbe19),
      ),
      TaskModel(
        task: 'Sleep',
        taskValue: 19.2,
        colorValue: Color(0xffff9900),
      ),
      TaskModel(
        task: 'Other',
        taskValue: 10.3,
        colorValue: Color(0xffdc3912),
      ),
    ];

    var lineSalesData1 = [
      SalesModel(
        yearValue: 0,
        salesValue: 45,
      ),
      SalesModel(
        yearValue: 1,
        salesValue: 56,
      ),
      SalesModel(
        yearValue: 2,
        salesValue: 55,
      ),
      SalesModel(
        yearValue: 3,
        salesValue: 60,
      ),
      SalesModel(
        yearValue: 4,
        salesValue: 61,
      ),
      SalesModel(
        yearValue: 5,
        salesValue: 70,
      ),
    ];

    var lineSalesData2 = [
      SalesModel(
        yearValue: 0,
        salesValue: 35,
      ),
      SalesModel(
        yearValue: 1,
        salesValue: 46,
      ),
      SalesModel(
        yearValue: 2,
        salesValue: 45,
      ),
      SalesModel(
        yearValue: 3,
        salesValue: 50,
      ),
      SalesModel(
        yearValue: 4,
        salesValue: 51,
      ),
      SalesModel(
        yearValue: 5,
        salesValue: 60,
      ),
    ];

    var lineSalesData3 = [
      SalesModel(
        yearValue: 0,
        salesValue: 20,
      ),
      SalesModel(
        yearValue: 1,
        salesValue: 24,
      ),
      SalesModel(
        yearValue: 2,
        salesValue: 25,
      ),
      SalesModel(
        yearValue: 3,
        salesValue: 40,
      ),
      SalesModel(
        yearValue: 4,
        salesValue: 45,
      ),
      SalesModel(
        yearValue: 5,
        salesValue: 60,
      ),
    ];

    _seriesPollutionData.add(
      charts.Series(
        domainFn: (PollutionModel pollution, _) => pollution.place,
        measureFn: (PollutionModel pollution, _) => pollution.quantity,
        id: '2018',
        data: pollutionData1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (PollutionModel pollutio, _) =>
            charts.ColorUtil.fromDartColor(
          Color(0xff990099),
        ),
      ),
    );

    _seriesPollutionData.add(
      charts.Series(
        domainFn: (PollutionModel pollution, _) => pollution.place,
        measureFn: (PollutionModel pollution, _) => pollution.quantity,
        id: '2019',
        data: pollutionData2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (PollutionModel pollution, _) =>
            charts.ColorUtil.fromDartColor(
          Color(0xff109618),
        ),
      ),
    );

    _seriesPollutionData.add(
      charts.Series(
        domainFn: (PollutionModel pollution, _) => pollution.place,
        measureFn: (PollutionModel pollution, _) => pollution.quantity,
        id: '2020',
        data: pollutionData3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (PollutionModel pollution, _) =>
            charts.ColorUtil.fromDartColor(
          Color(0xffff9900),
        ),
      ),
    );

    _seriesPieData.add(
      charts.Series(
        domainFn: (TaskModel task, _) => task.task,
        measureFn: (TaskModel task, _) => task.taskValue,
        colorFn: (TaskModel task, _) =>
            charts.ColorUtil.fromDartColor(task.colorValue),
        id: 'Air Pollution',
        data: pieData,
        labelAccessorFn: (TaskModel row, _) => '${row.taskValue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(
          Color(0xff990099),
        ),
        id: 'Air Pollution',
        data: lineSalesData1,
        domainFn: (SalesModel sales, _) => sales.yearValue,
        measureFn: (SalesModel sales, _) => sales.salesValue,
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(
          Color(0xff109618),
        ),
        id: 'Air Pollution',
        data: lineSalesData2,
        domainFn: (SalesModel sales, _) => sales.yearValue,
        measureFn: (SalesModel sales, _) => sales.salesValue,
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(
          Color(0xffff9900),
        ),
        id: 'Air Pollution',
        data: lineSalesData3,
        domainFn: (SalesModel sales, _) => sales.yearValue,
        measureFn: (SalesModel sales, _) => sales.salesValue,
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _seriesPollutionData = List<charts.Series<PollutionModel, String>>();
    _seriesPieData = List<charts.Series<TaskModel, String>>();
    _seriesLineData = List<charts.Series<SalesModel, int>>();

    _generateData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1976d2),
          title: Text('Flutter Animated Charts'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.solidChartBar),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartPie),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartLine),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'SO₂ emissions, by world region (in million tonnes)',
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: charts.BarChart(
                          _seriesPollutionData,
                          animate: true,
                          animationDuration: const Duration(seconds: 5),
                          barGroupingType: charts.BarGroupingType.grouped,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Time spent on daily tasks',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: charts.PieChart(
                          _seriesPieData,
                          animate: true,
                          animationDuration: const Duration(seconds: 5),
                          behaviors: [
                            charts.DatumLegend(
                              outsideJustification:
                                  charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 2,
                              cellPadding: const EdgeInsets.only(
                                  right: 4.0, bottom: 4.0),
                              entryTextStyle: charts.TextStyleSpec(
                                color:
                                    charts.MaterialPalette.purple.shadeDefault,
                                fontFamily: 'Georgia',
                                fontSize: 12,
                              ),
                            ),
                          ],
                          defaultRenderer: charts.ArcRendererConfig(
                            arcWidth: 100,
                            arcRendererDecorators: [
                              charts.ArcLabelDecorator(
                                labelPosition: charts.ArcLabelPosition.inside,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Sales for the first 5 years',
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: charts.LineChart(
                          _seriesLineData,
                          animate: true,
                          animationDuration: const Duration(seconds: 5),
                          defaultRenderer: charts.LineRendererConfig(
                            includeArea: true,
                            stacked: true,
                          ),
                          behaviors: [
                            charts.ChartTitle(
                              'Years',
                              behaviorPosition: charts.BehaviorPosition.bottom,
                              titleOutsideJustification:
                                  charts.OutsideJustification.middleDrawArea,
                            ),
                            charts.ChartTitle(
                              'Sales',
                              behaviorPosition: charts.BehaviorPosition.start,
                              titleOutsideJustification:
                                  charts.OutsideJustification.middleDrawArea,
                            ),
                            charts.ChartTitle(
                              'Departments',
                              behaviorPosition: charts.BehaviorPosition.end,
                              titleOutsideJustification:
                                  charts.OutsideJustification.middleDrawArea,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
