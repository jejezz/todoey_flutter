import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.name, this.checked, this.onChanged, this.onLongPressed});

  final String name;
  final bool checked;
  final Function onChanged;
  final Function onLongPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: GestureDetector(
            onLongPress: onLongPressed,
            child: Text(
              '$name',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                decoration:
                    checked ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
          ),
        ),
        Checkbox(
          value: checked,
          activeColor: Colors.lightBlueAccent,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
