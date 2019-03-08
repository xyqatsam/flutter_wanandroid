import 'package:flutter/material.dart';

class BottomNavBarComponent extends StatefulWidget {
  BottomNavBarComponent({
    Key key,
    @required this.items,
    this.fixedColor,
    this.iconSize = 14,
    this.onTap,
    this.currentIndex = 0
    }):super(key: key);

    final List<NavModel> items;
    final Color fixedColor;
    final double iconSize;
    final ValueChanged<int> onTap;
    final currentIndex;
  @override
  State<StatefulWidget> createState() {
   
    return BottomNavBarComponentStatus();
  }
}


class BottomNavBarComponentStatus extends State<BottomNavBarComponent> {
 
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      fixedColor: widget.fixedColor,
      onTap: (int index){
        debugPrint('current onTapIndex: $index');
        if (widget.onTap !=null) {
          widget.onTap(index);
        } 
      },
      iconSize: widget.iconSize,
      items: _buildBottomNavItem(widget.items),
    );
  }

 

  List<BottomNavigationBarItem> _buildBottomNavItem(List<NavModel> items) {
    return items.map((item)=> BottomNavigationBarItem(
    title: Text(item.title),
    icon: Icon(item.icon),
    activeIcon: Icon(item.activeIcon ?? item.icon),
    backgroundColor: item.backgroundColor
    )).toList();
  }
}

class NavModel {
  const NavModel({
    @required this.title,
    @required this.icon,
    this.activeIcon,
    this.backgroundColor =Colors.white
  }) ;

  final String title;
  final IconData icon;
  final IconData activeIcon;
  final Color backgroundColor;
   
}

