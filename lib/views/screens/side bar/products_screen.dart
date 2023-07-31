import 'package:flutter/material.dart';

import 'widgets/row_header.dart';

class ProductsScreen extends StatelessWidget {
  static const String routeName = '/ProductsScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Products',
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
                RowHeader(text: 'Name', flex: 2),
                RowHeader(text: 'Price', flex: 2),
                RowHeader(text: 'Quantity', flex: 2),
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
