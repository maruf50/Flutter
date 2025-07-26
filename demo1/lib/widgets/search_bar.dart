import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
