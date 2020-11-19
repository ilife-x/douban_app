import 'package:douban_app/pages/book/book_fielm_page.dart';
import 'package:douban_app/pages/group/group_page.dart';
import 'package:douban_app/pages/home/home_page.dart';
import 'package:douban_app/pages/mall/mall_page.dart';
import 'package:douban_app/pages/mine/mine_page.dart';
import 'package:flutter/material.dart';

//把数组单独抽取到一个文件
List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
      icon: Icon(Icons.star_border),
      label: '首页',
      activeIcon: Icon(Icons.star),
      backgroundColor: Colors.red),
  BottomNavigationBarItem(
      icon: Icon(Icons.star_border),
      label: '书影音',
      activeIcon: Icon(Icons.star),
      backgroundColor: Colors.red),
  BottomNavigationBarItem(
      icon: Icon(Icons.star_border),
      label: '小组',
      activeIcon: Icon(Icons.star),
      backgroundColor: Colors.red),
  BottomNavigationBarItem(
      icon: Icon(Icons.star_border),
      label: '市集',
      activeIcon: Icon(Icons.star),
      backgroundColor: Colors.red),
  BottomNavigationBarItem(
      icon: Icon(Icons.star_border),
      label: '我的',
      activeIcon: Icon(Icons.star),
      backgroundColor: Colors.red),
];

List<Widget> pages = [
  HomePage(),
  BookFielmPage(),
  GroupePage(),
  MallPage(),
  MinePage(),
];
