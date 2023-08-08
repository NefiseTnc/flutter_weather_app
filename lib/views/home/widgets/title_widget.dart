import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 36.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: deviceWidth * .35,
            child: Text(
              'Stockholm,Sweden',
              style: TextStyle(
                  fontSize: 27,
                  color: AppStyle.textColor,
                  fontFamily: AppStyle.fontFamilyInterMedium),
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            'Tue, Jun 30  ',
            style: TextStyle(
                fontSize: 12,
                color: AppStyle.textColor,
                fontFamily: AppStyle.fontFamilyInterRegular),
          ),
        ],
      ),
    );
  }
}
