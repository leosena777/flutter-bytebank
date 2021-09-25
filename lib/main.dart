import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TransferenceForm(),
      ),
    );
  }
}

class TransferenceForm extends StatelessWidget {
  const TransferenceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transferência")),
      body: Column(

      ),
    );
  }
}

class TransferenceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transferências"),
      ),
      body: Column(
        children: [
          TransactionItem(Transference(amount: 100, account: 1000)),
          TransactionItem(Transference(amount: 300, account: 1000)),
          TransactionItem(Transference(amount: 250, account: 1000)),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final Transference _transference;

  const TransactionItem(this._transference);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: const Icon(Icons.monetization_on),
          title: Text(_transference.amount.toString()),
          subtitle: Text(_transference.account.toString())),
    );
  }
}

class Transference {
  final double amount;
  final int account;

  Transference({required this.amount, required this.account});
}
