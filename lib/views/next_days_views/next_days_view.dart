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
            left: 20.0,
            right: 20.0,
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
              ),
              const SizedBox(height: 25.0),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white.withOpacity(.6),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tomorrow',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppStyle.textColor,
                              fontFamily: AppStyle.fontFamilyInterSemiBold),
                        ),
                        Row(
                          children: [
                            Text(
                              '22 °',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: AppStyle.textColor,
                                  fontFamily: AppStyle.fontFamilyInterBold),
                            ),
                            const SizedBox(width: 7),
                            Image.asset(
                              'assets/images/day_clear.png',
                              width: 32,
                              height: 32,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _item('assets/icons/rain_fall_icon.png', '1 cm'),
                        const SizedBox(width: 20.0),
                        _item('assets/icons/wind_icon.png', '15 km/h'),
                        const SizedBox(width: 20.0),
                        _item('assets/icons/humidity_icon.png', '50 %')
                      ],
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _daysItem('Thursday', '21', 'assets/images/day_clear.png'),
                  const SizedBox(height: 9),
                  _daysItem('Friday', '19', 'assets/images/day_sleet.png'),
                  const SizedBox(height: 9),
                  _daysItem('Saturday', '18', 'assets/images/day_snow.png'),
                  const SizedBox(height: 9),
                  _daysItem('Sunday', '12', 'assets/images/mist.png'),
                  const SizedBox(height: 9),
                  _daysItem('Monday', '16', 'assets/images/day_clear.png'),
                  const SizedBox(height: 9),
                  _daysItem('Tuesday', '18', 'assets/images/day_rain.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _daysItem(String dayTitle, String degree, String imageUrl) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white.withOpacity(.36),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            dayTitle,
            style: TextStyle(
                fontSize: 10,
                color: AppStyle.textColor,
                fontFamily: AppStyle.fontFamilyInterSemiBold),
          ),
          Row(
            children: [
              Text(
                '$degree °',
                style: TextStyle(
                    fontSize: 10,
                    color: AppStyle.textColor,
                    fontFamily: AppStyle.fontFamilyInterBold),
              ),
              const SizedBox(width: 7),
              Image.asset(
                imageUrl,
                width: 32,
                height: 32,
                fit: BoxFit.cover,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _item(
    String imageUrl,
    String text,
  ) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white.withOpacity(.9),
          ),
          child: Image.asset(
            imageUrl,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          text,
          style: TextStyle(
              fontSize: 15,
              color: AppStyle.textColor,
              fontFamily: AppStyle.fontFamilyInterRegular),
        ),
      ],
    );
  }
}
