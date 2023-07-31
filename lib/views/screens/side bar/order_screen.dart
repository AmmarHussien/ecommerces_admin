import 'package:flutter/material.dart';

import 'widgets/row_header.dart';

class OrdersScreen extends StatelessWidget {
  static const String routeName = '/OrdersScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Orders',
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
                RowHeader(text: 'Image', flex: 1),
                RowHeader(text: 'Full Name', flex: 2),
                RowHeader(text: 'City', flex: 2),
                RowHeader(text: 'State', flex: 2),
                RowHeader(text: 'Action', flex: 1),
                RowHeader(text: 'View More ', flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
