import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icons/search_icon.png',
            width: 24,
            height: 24,
          ),
          Image.asset(
            'assets/icons/menu_icon.png',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
