import 'dart:ffi';

import 'package:douban_app/Service/movie_item.dart';
import 'package:douban_app/pages/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:douban_app/pages/widgets/star_rating.dart';

class MovieItem extends StatelessWidget {
  //模型数据
  final MovieModel model;
  MovieItem(this.model);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 8, color: Color(0xffcccccc)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 左对齐
        children: <Widget>[
          buildHeader(),
          SizedBox(
            height: 8,
          ),
          buildContent(),
          SizedBox(
            height: 8,
          ),
          buildFooter(),
        ],
      ),
    );
  }

  //1.0header
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        'No.${model.rank}',
        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  //2.0 middle content
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(
          width: 8,
        ),
        //剩余横向空间分配
        Expanded(
          //IntrinsicHeight 内在的高度
          child: IntrinsicHeight(
            child: Row(
              children: [
                buildContentInfo(),
                SizedBox(width: 8),
                buildContentLine(),
                SizedBox(
                  width: 8,
                ),
                buildContentWish(),
              ],
            ),
          ),
        )
      ],
    );
  }

  //2.1 图片
  Widget buildContentImage() {
    return ClipRRect(
      //ClipRRect 注意 两个R
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        model.coverUrl,
        height: 150,
      ),
    );
  }

  //2.2 描述
  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          SizedBox(
            height: 8,
          ),
          buildContentInfoRate(),
          SizedBox(
            height: 8,
          ),
          buildContentInfoDec(),
          SizedBox(),
        ],
      ),
    );
  }

  //2.2.1 描述-标题
  Widget buildContentInfoTitle() {
    return Text.rich(TextSpan(children: [
      WidgetSpan(
          child: Icon(
            Icons.play_circle_outline,
            color: Colors.pink,
            size: 40,
          ),
          baseline: TextBaseline.ideographic,
          alignment: PlaceholderAlignment.middle),
      ...model.title.runes.map((rune) {
        return WidgetSpan(
            child: Text(
              String.fromCharCode(rune),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            alignment: PlaceholderAlignment.middle);
      }).toList(),
      WidgetSpan(
          child: Text(
            '2020-11-11',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          alignment: PlaceholderAlignment.middle),
    ]));
  }

  //2.2.2 描述-得分
  Widget buildContentInfoRate() {
    return FittedBox(
      child: Row(
        children: [
          TTStartRating(
            rating: double.parse(model.score),
            size: 40,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            '${model.score}',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  //2.2.3 描述-内容
  Widget buildContentInfoDec() {
    List casts = model.actors;
    return Text(
      '$casts',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }

  //2.3 分割线
  Widget buildContentLine() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }

  //2.4 想看
  Widget buildContentWish() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/home/wish.png'),
          Text(
            '想看',
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(244, 235, 170, 60),
            ),
          )
        ],
      ),
    );
  }

  //3.0 footer
  Widget buildFooter() {
    return Container();
  }
}
