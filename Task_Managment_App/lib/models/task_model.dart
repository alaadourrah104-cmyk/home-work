import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class TaskModel extends Equatable {
  final String title;
  final DateTime date;
  bool isCompleted;

  TaskModel(this.date, this.isCompleted, this.title);

  @override
  List<Object?> get props => [title, date, isCompleted];
}
