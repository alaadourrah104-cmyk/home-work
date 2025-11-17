import 'task_model.dart';

class TaskManager {
  final List<TaskModel> _tasks = [];
  void addTask(TaskModel task) {
    _tasks.add(task);
  }

  void removeTask(TaskModel task) {
    _tasks.remove(task);
  }

  void updateTask(TaskModel task) {
    task.isCompleted = !task.isCompleted;
  }

  List<TaskModel> get tasks => _tasks;
}
