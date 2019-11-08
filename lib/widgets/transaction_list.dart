import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; //for date
import './transactionI_item.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    print('build() Transaction list ');
    return Container(
      height: 450,
      child: transactions.isEmpty
          ? LayoutBuilder(
              builder: (ctx, constraints) {
                return Column(
                  children: <Widget>[
                    Text(
                      'No Transaction added yeat  :) ',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: constraints.maxHeight * 0.6,
                        child: Image.asset('assets/images/waiting.png',
                            fit: BoxFit.cover)),
                  ],
                );
              },
            )
          : ListView(
              children: transactions
                  .map((tx) => TransactionItem(
                        key:ValueKey(tx.id) ,
                        transaction: tx,
                        deleteTx: deleteTx,
                      ))
                  .toList()),
    );
  }
}
