// String CreateStr(List<String> s) {
//   String ans = '';
//   for(String str in s) {
//     ans += '$str, ';
//   }
//   return ans.substring(0, ans.length - 2);
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// Widget CreateAbils(List<String> s) {
//   for (String n in s) {
//     return Card(
//       child: Text('$n'),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Widget getTextWidgets(List<String> strings) {
//   return Column(
//       children: strings.map((item) =>
//     Text(item),
//       )
//       .toList());
// }

Widget getTextWidgets(List<String> strings)
{
  List<Widget> list = <Widget>[];
  for(var i = 0; i < strings.length; i++){
    list.add(Row(children: [Text(strings[i], style: TextStyle(fontSize: 18),)]));
    list.add(Divider(thickness: 1,
      color: Colors.grey[400],));
  }
  return new Column(
      children: list.sublist(0, list.length - 1));
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}