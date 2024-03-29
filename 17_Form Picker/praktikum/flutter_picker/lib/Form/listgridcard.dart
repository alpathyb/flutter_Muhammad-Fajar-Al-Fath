import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/data.dart';

class ListGridCard extends StatelessWidget {
  const ListGridCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final items = Provider.of<Data>(context);
    return ClipRRect(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed('/result', arguments: {'id': items.id});
        },
        child: Card(
          child: Image.file(
            items.cover,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
