import 'package:flutter/material.dart';
import 'package:mevivu/widget/button_custom.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      child: Row(
        children: [
          Icon(Icons.search_rounded),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search address or near you',
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ButtonCustom(
            selected: true,
            icon: Icons.edit_location_outlined,
          )
        ],
      ),
    );
  }
}
