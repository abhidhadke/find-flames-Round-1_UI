import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
    required this.editingController,
  });

  final TextEditingController editingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: const [BoxShadow(
                color: Colors.black26,
                blurRadius: 1,
                spreadRadius: 1
            )
            ]
        ),
        child: TextField(
          onChanged: (value) {},
          controller: editingController,
          decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.white,
              prefixIcon: SvgPicture.asset(
                  'assets/search/Vector.svg', fit: BoxFit.scaleDown),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)))),
        ),
      ),
    );
  }
}