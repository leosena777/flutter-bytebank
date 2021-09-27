import 'package:bytebank/components/transference_item.dart';
import 'package:bytebank/models/transference.dart';
import 'package:bytebank/screens/transference/form.dart';
import 'package:flutter/material.dart';

class TransferenceList extends StatefulWidget {
  final List<Transference> transferences = [
    Transference(account: 3344, amount: 20.00)
  ];

  TransferenceList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TransferenceListState();
  }
}

class _TransferenceListState extends State<TransferenceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Depósito"),
      ),
      body: ListView.builder(
        itemCount: widget.transferences.length,
        itemBuilder: (context, index) {
          final item = widget.transferences[index];
          return TransferenceItem(item);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transference?> result = Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TransferenceForm()),
          );

          result.then((transference) {
            if (transference != null) {
              setState(() {
                widget.transferences.insert(0, transference);
              });
            }
          });
        },
      ),
    );
  }
}
