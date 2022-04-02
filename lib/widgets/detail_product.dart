import 'package:flutter/material.dart';
import 'package:otomax/widgets/category.dart';
import 'package:otomax/widgets/collections.dart';
import 'dart:async';
import 'dart:convert';

class DetailProduct extends StatelessWidget {
  final String text;
  DetailProduct({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(text)),
      body: SafeArea(child: ListView()),
    );
  }
}
