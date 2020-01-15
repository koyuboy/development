import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function _deleteTransaction;

  TransactionList(this.transactions, this._deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return transactions.length == 0
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: <Widget>[
                  Text('No Transactions Added Yet!'),
                  SizedBox(height: 10),
                  Container(
                    height: constraints.maxHeight * 0.6,
                    width: constraints.maxWidth * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                    ),
                  ),
                ],
              );
            },
          )
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: FittedBox(
                          child: Text(
                            '\$${transactions[index].amount}',
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      DateFormat('dd/MM/yyyy').format(transactions[index].date),
                    ),
                    trailing: MediaQuery.of(context).size.width > 360
                        ? FlatButton.icon(
                            icon: Icon(Icons.delete),
                            label: Text('Delete'),
                            textColor: Theme.of(context).errorColor,
                            onPressed: () {_deleteTransaction(transactions[index].id);}
                          )
                        : IconButton(
                            onPressed: () {
                              _deleteTransaction(transactions[index].id);
                            },
                            icon: Icon(Icons.delete),
                            color: Theme.of(context).errorColor,
                          )),
              );
            },
            itemCount: transactions.length,
          );
  }
}
