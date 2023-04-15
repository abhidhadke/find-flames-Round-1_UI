import 'package:flutter/material.dart';

class SearchNet extends StatelessWidget {
  const SearchNet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Search", style: TextStyle(color: Colors.black, fontSize: 30),)),
    );
  }
}
