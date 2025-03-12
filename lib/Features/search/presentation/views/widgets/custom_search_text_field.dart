import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  final Function(String) onSearch;

  const CustomSearchTextField({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch, // يتم استدعاء onSearch عند كل تغيير في النص
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        suffixIcon: Opacity(
          opacity: .8,
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
        hintText: "Search",
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}