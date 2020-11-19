import 'package:douban_app/pages/main/initialize.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //标记选中的item位置
  int curentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: curentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curentIndex,
        //item 多余5个的时候文字不显示处理
        type: BottomNavigationBarType.fixed,
        //选中和非选中字体大小一致就取消了放大效果
        selectedFontSize: 12,
        // unselectedFontSize: 14,
        items: items,
        onTap: (int index) {
          setState(() {
            curentIndex = index;
          });
        },
      ),
    );
  }
}
