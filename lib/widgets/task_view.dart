import 'package:flutter/material.dart';
import 'task_tile.dart';
// import 'package:to_dolist/models/task.dart';
import 'package:to_dolist/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_dolist/models/task_data.dart';

class TaskView extends StatefulWidget {
  // final List<Task> tasks;
  // TaskView({this.tasks});

  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isCheck: task.isDone,
                checkBoxStatus: (checkBox) {
                     taskData.upDateTask(task);
                },
              onLongPressCallBack: (){
                 taskData.deleteTask(task);
            },
            );
          },

          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
