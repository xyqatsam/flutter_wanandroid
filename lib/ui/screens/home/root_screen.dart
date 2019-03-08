import 'package:flutter/material.dart';

import '../../components/index.dart';
import '../home/index.dart';
class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  static const _defaultIndex = 0;

  var _currentIndex = _defaultIndex;

  final _pageController = PageController(initialPage: _defaultIndex);

  final  _navItems = [
    NavModel(title: '首页',icon: Icons.home),
    NavModel(title: '公众号',icon: Icons.supervisor_account)
  ];

  final  _pageItems = [
    HomeScreen(),
    OffcialAccountScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageViewComponent(
        controller: _pageController,
        pages: _pageItems,
        onPageChanged: (index) => setState(() => _currentIndex = index)
      ),
      bottomNavigationBar: BottomNavBarComponent(
        currentIndex: _currentIndex,
        items: _navItems,
        onTap: (index) =>  _pageController.animateToPage(index,duration: Duration(milliseconds: 500),curve: ElasticOutCurve(0.85))
      ),
    );
  }
}
