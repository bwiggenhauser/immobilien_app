import 'package:flutter/material.dart';
import 'package:immobilien_app/Constants.dart';

class CityInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20.0,
        top: 40.0,
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextProvider(
            textSize: 15.0,
            textColor: TEXT_COLOR2,
            textContent: 'Stadt',
          ),
          TextProvider(
            textSize: 45,
            textColor: TEXT_COLOR1,
            textContent: 'München',
          ),
        ],
      ),
    );
  }
}
