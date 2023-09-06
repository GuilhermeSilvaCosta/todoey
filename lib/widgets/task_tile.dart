import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key, this.isChecked, required this.title, required this.onChanged,
  });

  final bool? isChecked;
  final String title;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked, 
        onChanged: onChanged,
      ),
    );
  }
}