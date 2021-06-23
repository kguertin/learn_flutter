import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()), 
    Transaction(id: 't2', title: 'Weekly Groceries', amount: 16.54, date: DateTime.now())
  ];

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final ammountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("Chart"),
              elevation: 5,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: "Title"),
                    controller: titleController,
                    // onChanged: (value) => titleInput = value,
                    ),
                  TextField(
                    decoration: InputDecoration(labelText: "Price"),
                    controller: ammountController,
                    // onChanged: (value) => amountInput = value, 
                    ),
                  FlatButton(
                    child: Text('Add Transaction'), 
                    onPressed: () {
                        print(titleController.text);
                      }, 
                    textColor: Colors.purple,
                    )
                ],
              ),
            ),
          ),
          Column(children: transactions.map((tx){
            return Card(child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2)),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${tx.amount}', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 20, 
                      color: Colors.purple
                      )
                   )
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Text(
                      tx.title, 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        ),
                      ),
                    Text(
                      DateFormat.yMMMd().format(tx.date),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
         }).toList(),),
        ],
      ),
    );
  }
}
