import 'package:douban_app/Service/movie_item.dart';
import 'package:douban_app/Service/http_request.dart';

class BookRequest {
  static Future<List<MovieModel>> requstMovieList() async {
    String url =
        "https://movie.douban.com/j/chart/top_list?type=11&interval_id=100%3A90&action=&start=0&limit=20";
    final result = await HttpRequest.request(url);
    List<MovieModel> itemList = [];
    for (var item in result) {
      MovieModel model = MovieModel.fromJson(item);
      itemList.add(model);
    }
    return itemList;
  }
}
