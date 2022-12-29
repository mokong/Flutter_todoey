class Task {
  String taskName;
  bool isDone;

  Task({required this.taskName, this.isDone = false});

  toggleIsDone() {
    isDone = !isDone;
  }
}
