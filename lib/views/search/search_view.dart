import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: (MediaQuery.of(context).padding.bottom) * .5,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppStyle.backgroundLineerGradient,
        ),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      'assets/icons/back_arrow_icon.png',
                      width: 36,
                      height: 36,
                    )),
                SizedBox(width: MediaQuery.of(context).size.width * .25),
                Text(
                  'Search',
                  style: TextStyle(
                    fontFamily: AppStyle.fontFamilyInterRegular,
                    color: AppStyle.textColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/search_icon.png',
                        color: const Color(0xFFE07F3A),
                        width: 24.0,
                        height: 24.0,
                      )),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFE07F3A)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFE07F3A)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFE07F3A)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
