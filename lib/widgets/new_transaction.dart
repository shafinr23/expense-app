import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData (){
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

if(enteredTitle.isEmpty || enteredAmount<=0){
  return;
}

    widget.addTx(
                      enteredTitle,
                      enteredAmount,
                      );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'title'),
              controller: titleController,
               onSubmitted: (_)=>submitData(),
              // onChanged: (value){
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_)=>submitData(),
              // onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              child: Text('add Trans'),
              onPressed: submitData,
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
