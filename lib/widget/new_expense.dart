import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseSate();
  }
}

class _NewExpenseSate extends State<NewExpense> {
  final titleController = TextEditingController();

  // String enteredTile = '';

  // void _saveTitleInput(String value) {
  //   enteredTile = value;
  // }

  @override
  void dispose() {
    titleController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            // onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Tile')),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(titleController.text);
                  },
                  child: const Text('Save Expense'))
            ],
          )
        ],
      ),
    );
  }
}
