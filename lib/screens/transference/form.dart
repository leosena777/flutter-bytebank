import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transference.dart';
import 'package:flutter/material.dart';

class TransferenceForm extends StatefulWidget {
  const TransferenceForm({Key? key}) : super(key: key);

  @override
  State<TransferenceForm> createState() => _TransferenceFormState();
}

class _TransferenceFormState extends State<TransferenceForm> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _accountNumberController =
        TextEditingController();

    final TextEditingController _valueController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Criando depósito")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                controller: _accountNumberController,
                label: "Número da conta",
                placeholder: "0000"),
            Editor(
                controller: _valueController,
                label: "Valor",
                placeholder: "0.00",
                icon: Icons.monetization_on),
            ElevatedButton(
              onPressed: () => createTransference(
                  _accountNumberController, _valueController, context),
              child: Text("Confirmar"),
            ),
          ],
        ),
      ),
    );
  }

  void createTransference(TextEditingController _accountNumberController,
      TextEditingController _valueController, BuildContext context) {
    final int? accountNumber = int.tryParse(_accountNumberController.text);
    final double? ammount = double.tryParse(_valueController.text);

    if (accountNumber != null && ammount != null) {
      final transference = Transference(
        account: accountNumber,
        amount: ammount,
      );

      Navigator.pop(context, transference);
    }
  }
}
