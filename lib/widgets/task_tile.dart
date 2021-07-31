import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
TaskTile({this.isCheck,this.taskTitle,this.checkBoxStatus,this.onLongPressCallBack
});
  final bool isCheck;
  final String taskTitle;
  final Function checkBoxStatus;
  final Function onLongPressCallBack;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack,
      title: Text(
        taskTitle,
      style: TextStyle(
        decoration: isCheck? TextDecoration.lineThrough : null,
      ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isCheck,
        onChanged: checkBoxStatus,
      ),
    );
  }
}
