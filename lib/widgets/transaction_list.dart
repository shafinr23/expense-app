import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; //for date  


import '../models/transaction.dart';

class TransactionList extends StatelessWidget {

final List<Transaction> transactions;

TransactionList(this.transactions);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      
      child:  ListView.builder(
              itemBuilder:(ctx,index){
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).primaryColorLight,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '\৳ ${transactions[index].amount.toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.title,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transactions[index].title,
                              style: Theme.of(context).textTheme.title,
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              DateFormat.yMMMEd().format(transactions[index].date),
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
              } ,
              itemCount: transactions.length,
              ),
    );
  }
}