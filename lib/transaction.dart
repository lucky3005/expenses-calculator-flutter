import 'package:flutter/material.dart';

class Transaction {
  String id, title;
  double amount;
  DateTime date;

  Transaction(this.id, this.title, this.amount, this.date);
}
