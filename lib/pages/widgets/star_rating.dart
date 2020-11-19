import 'package:flutter/material.dart';

class TTStartRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count; //星星个数
  final double size; //星星大小
  final Color unSelectedColor;
  final Color selectedColor;
  Widget unSelectedImage;
  Widget selectedImage;

  TTStartRating({
    @required this.rating,
    this.maxRating = 10.0,
    this.count = 5,
    this.size = 30,
    this.unSelectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget unSelectedImage,
    Widget selectedImage,
  })  : unSelectedImage = unSelectedImage ??
            Icon(
              Icons.star_border,
              size: size,
              color: unSelectedColor,
            ),
        selectedImage = selectedImage ??
            Icon(
              Icons.star,
              size: size,
              color: selectedColor,
            );
  @override
  _TTStartRatingState createState() => _TTStartRatingState();
}

class _TTStartRatingState extends State<TTStartRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: buildList()),
        Row(mainAxisSize: MainAxisSize.min, children: buildBorderStartList())
      ],
    );
  }

  //空心
  List<Widget> buildList() {
    return List.generate(widget.count, (index) => widget.unSelectedImage);
  }

//实心
  List<Widget> buildBorderStartList() {
    List<Widget> stars = [];
    double num = (widget.rating / (10 / widget.count));
    int nu = num.floor();
    final Widget star = widget.selectedImage;

    for (int i = 0; i < nu; i++) {
      stars.add(star);
    }
    double leftWidth = ((num - nu) * widget.size).ceilToDouble();

    final halfStar = ClipRect(
        clipper: MyClicper(width: leftWidth), child: widget.selectedImage);
    stars.add(halfStar);

    if (stars.length > widget.count) {
      stars = stars.sublist(0, widget.count);
    }
    return stars;
  }
}

class MyClicper extends CustomClipper<Rect> {
  MyClicper({this.width});
  double width;

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, this.width, size.height);
  }

  @override
  bool shouldReclip(MyClicper oldClipper) {
    return oldClipper.width != this.width;
  }
}
