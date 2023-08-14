import 'package:flutter/material.dart';
import 'package:flutter_weather_app/views/search/search_view.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
              visible: false,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchView(),
                          ));
                    },
                    child: Image.asset(
                      'assets/icons/search_icon.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/menu_icon.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              )),
          Visibility(
            visible: true,
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/back_arrow_icon.png',
                  width: 24,
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SizedBox(
                    height: 54.0,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFE07F3A)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFE07F3A)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFE07F3A)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
