import 'package:bytebank/screens/transference/list.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.green[700],
        ),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(1, 45),
                primary: Colors.green[700],
                onPrimary: Colors.green[100],
                textStyle: const TextStyle(fontSize: 18.0))),
      ),
      home: TransferenceList(),
    );
  }
}
