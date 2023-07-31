import 'package:flutter/material.dart';

import 'widgets/row_header.dart';

class WithdrawelScreen extends StatelessWidget {
  static const String routeName = '/WithdrawelScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Withdrawel',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
         Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                RowHeader(text: 'Name', flex: 1),
                RowHeader(text: 'Amount', flex: 2),
                RowHeader(text: 'Bank Name', flex: 2),
                RowHeader(text: 'Bank Account', flex: 2),
                RowHeader(text: 'Email', flex: 1),
                RowHeader(text: 'Phone ', flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
