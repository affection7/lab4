import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
            title: Container(
          child: Text(
            'Список элементов',
            style: TextStyle(color: Colors.black),
          ),
        )),
        body: new Center(
          child: new MyBody(),
        ))));

class MyBody extends StatefulWidget {
  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      print('num $i : нечетное = ${i.isOdd}');
      final int index = i ~/ 2;
      if (i.isOdd)
        return new Divider(
          color: Colors.amber,
        );

      index.toDouble();
      num x = pow(2, index);
      return Text('2' '^' '$index' ' ' '=' '$x');
    });
  }
}
