import 'package:flutter/material.dart';

class RowHeader extends StatelessWidget {
  const RowHeader({
    super.key,
    required this.text,
    required this.flex,
  });

  final String text;
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade700,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
