import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              _searchController.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
        onChanged: (value) {
          // Perform search operation
        },
      ),
    );
  }
}
