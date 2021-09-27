class Transference {
  final double? amount;
  final int? account;

  Transference({required this.amount, required this.account});

  @override
  String toString() {
    return 'Transference{ account: $account, amount: $amount }';
  }
}
