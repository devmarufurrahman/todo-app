import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget{
  TextEditingController controller = TextEditingController();
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
  return AlertDialog(
    backgroundColor: Colors.deepPurple[300],
    content: Container(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            decoration:InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.white, width: 2, style: BorderStyle.solid),
              ),
              enabledBorder: OutlineInputBorder( // Default border color
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.white, width: 2),
              ),
              focusedBorder: OutlineInputBorder( // Default border color
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              fillColor: Colors.white,
              hintText: "Add a new todo item",
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: onCancel,
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.white),
                )
              ),
              SizedBox(height: 10,),
              TextButton(
                onPressed: onSave,
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                )
              ),
            ],
          )
        ],
      )
    ),
  );

  }
}