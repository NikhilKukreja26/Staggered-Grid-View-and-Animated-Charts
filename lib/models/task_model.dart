import 'package:flutter/material.dart';

class TaskModel {
  final String task;
  final double taskValue;
  final Color colorValue;

  TaskModel({
    @required this.task,
    @required this.taskValue,
    @required this.colorValue,
  });
}
