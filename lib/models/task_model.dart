class Task {
  final String title;
  bool isComplete;

  Task({
    required this.title,
    required this.isComplete,
  });

  void isDone (){
    isComplete = !isComplete;
  }
}