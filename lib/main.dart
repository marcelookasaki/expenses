import 'package:flutter/material.dart';
import './models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 520.54,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.12,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.blue,
                child: Text('Gráfico'),
                elevation: 5,
              ),
            ),
            Column(
              children: [
                ..._transactions.map((tr) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          child: Text(tr.value.toString()),
                        ),
                        Column(
                          children: [
                            Text(tr.title),
                            Text(tr.date.toString()),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              ],
            )
          ],
        ));
  }
}
