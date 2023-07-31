import 'package:flutter/material.dart';

import 'widgets/row_header.dart';

class VendorsScreen extends StatelessWidget {
  static const String routeName = '/VendorsScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Manage Vendors',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowHeader(text: 'Logo', flex: 1),
                RowHeader(text: 'Bussiness', flex: 3),
                RowHeader(text: 'City', flex: 2),
                RowHeader(text: 'State', flex: 2),
                RowHeader(text: 'Action', flex: 1),
                RowHeader(text: 'View More', flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
