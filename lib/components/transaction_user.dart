import 'package:flutter/material.dart';
import 'dart:math';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Rx 580 8gb Ali',
      value: 467.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Asgard memory 16gb',
      value: 199.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'tenis AirForce',
      value: 89.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Bermuda',
      value: 49.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'SSD nvme m2 512gb',
      value: 129.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'SSD nvme m2 128gb',
      value: 79.99,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
