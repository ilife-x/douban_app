import 'package:douban_app/Service/movie_item.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final MovieModel model;
  MovieItem(this.model);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${model.title}'),
      leading: Image(
        image: NetworkImage("${model.coverUrl}"),
      ),
    );
  }
}
