import 'package:flutter/material.dart';

class EarningsTab extends StatefulWidget {
  const EarningsTab({Key? key}) : super(key: key);

  @override
  State<EarningsTab> createState() => _EarningsTabState();
}

class _EarningsTabState extends State<EarningsTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Earnings',
      ),
    );
  }
}
