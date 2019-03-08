import 'package:flutter/material.dart';

class OffcialAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: _OffcialAccountBlocScreen(),
    );
  }
}

class _OffcialAccountBlocScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('公众号'),
    );
  }
}