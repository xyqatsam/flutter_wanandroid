import 'package:flutter/material.dart';

class PageViewComponent extends StatefulWidget {
  PageViewComponent({
    Key key,
    @required this.controller,
    @required this.pages,
    this.onPageChanged,
    this.physics
    }): super(key:key);

    final PageController controller;
    final List<Widget> pages;
    final ValueChanged<int> onPageChanged;
    final ScrollPhysics physics;
  @override
  _PageViewComponentState createState() => _PageViewComponentState();
}

class _PageViewComponentState extends State<PageViewComponent> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: widget.physics,
      controller: widget.controller,
      onPageChanged: widget.onPageChanged,
      itemCount: widget.pages.length,
      itemBuilder: (context,index){
        return widget.pages[index];
      },
    );
  }
}