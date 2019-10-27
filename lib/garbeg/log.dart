// return Card(
//                   child: Row(
//                     children: <Widget>[
//                       Container(
//                         margin:
//                             EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Theme.of(context).primaryColorLight,
//                             width: 2,
//                           ),
//                         ),
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           '\৳ ${transactions[index].amount.toStringAsFixed(2)}',
//                           style: Theme.of(context).textTheme.title,
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             transactions[index].title,
//                             style: Theme.of(context).textTheme.title,
//                             textAlign: TextAlign.start,
//                           ),
//                           Text(
//                             DateFormat.yMMMEd()
//                                 .format(transactions[index].date),
//                             style: TextStyle(color: Colors.grey),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 );