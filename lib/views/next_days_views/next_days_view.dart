import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class NextDaysWidget extends StatelessWidget {
  const NextDaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: (MediaQuery.of(context).padding.bottom) * .5),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppStyle.backgroundLineerGradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/back_arrow_icon.png',
                        width: 36,
                        height: 36,
                      )),
                  SizedBox(width: MediaQuery.of(context).size.width * .25),
                  Text(
                    'Next 7 Days',
                    style: TextStyle(
                      fontFamily: AppStyle.fontFamilyInterRegular,
                      color: AppStyle.textColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
