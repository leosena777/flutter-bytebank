import 'package:bytebank/models/transference.dart';
import 'package:flutter/material.dart';

class TransferenceItem extends StatelessWidget {
  final Transference _transference;

  TransferenceItem(this._transference);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Icon(
            Icons.monetization_on,
            color: Colors.green[700],
          ),
          title: Text('R\$ ${_transference.amount.toString()}'),
          subtitle: Text('Acc: ${_transference.account.toString()}')),
    );
  }
}
