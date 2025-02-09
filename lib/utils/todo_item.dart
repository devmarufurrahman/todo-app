import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget{
  final bool isChecked;
  final String todoText;
  final Function(bool?) onChanged;

  const TodoItem({super.key, required this.onChanged, required this.todoText, required this.isChecked});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.deepPurple[500],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(
              onChanged: (onChanged),
              value: isChecked,
              checkColor: Colors.white,
            ),
            Text(
              todoText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              )
            ),
          ]
        )
      ),
    );
  }
}