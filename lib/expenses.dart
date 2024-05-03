import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 1.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cenima',
        amount: 1.99,
        date: DateTime.now(),
        category: Category.leisure)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          const Text("The chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ]),
      ),
    );
  }
}
