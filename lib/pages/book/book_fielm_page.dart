import 'package:douban_app/pages/book/book_movie_item.dart';
import 'package:flutter/material.dart';
import 'package:douban_app/Service/bookRequest/book_request.dart';
import 'package:douban_app/Service/movie_item.dart';

class BookFielmPage extends StatefulWidget {
  @override
  _BookFielmPageState createState() => _BookFielmPageState();
}

class _BookFielmPageState extends State<BookFielmPage> {
  List<MovieModel> itemList = [];

  @override
  void initState() {
    super.initState();
    getItemList();
  }

  void getItemList() async {
    itemList = await BookRequest.requstMovieList();
    print(itemList.length);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('书影音'),
        ),
        body: Container(
            alignment: Alignment.center,
            child: ListView.builder(
                // itemExtent: 200,
                itemCount: itemList.length,
                itemBuilder: (ctx, index) {
                  MovieModel model = itemList[index];
                  return MovieItem(model);
                })));
  }
}
