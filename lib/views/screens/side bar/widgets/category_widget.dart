import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CatgeoryScreen extends StatefulWidget {
  const CatgeoryScreen({super.key});

  @override
  State<CatgeoryScreen> createState() => _CatgeoryScreenState();
}

class _CatgeoryScreenState extends State<CatgeoryScreen> {
  final Stream<QuerySnapshot> _categoryStream =
      FirebaseFirestore.instance.collection('categories').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _categoryStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return GridView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data!.size,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            final categorydata = snapshot.data!.docs[index];
            return Column(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                    categorydata['image'],
                  ),
                ),
                Text(
                  categorydata['categoryName'],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
