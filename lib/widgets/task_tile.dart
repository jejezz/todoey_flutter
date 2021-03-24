import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.name, this.checked, this.onChanged});

  final String name;
  final bool checked;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
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
          Checkbox(
            value: checked,
            activeColor: Colors.lightBlueAccent,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
