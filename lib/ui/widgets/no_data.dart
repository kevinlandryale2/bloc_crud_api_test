import 'package:flutter/material.dart';

class NoData extends StatelessWidget{
  final String noDataText;
  NoData(this.noDataText);
@override
  Widget build(BuildContext context) {

    return Center(
      child: Text(noDataText),
    );
  }
}