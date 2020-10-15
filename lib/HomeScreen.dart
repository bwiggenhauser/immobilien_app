import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immobilien_app/CityInfo.dart';
import 'package:immobilien_app/Constants.dart';
import 'package:immobilien_app/Filters.dart';
import 'package:immobilien_app/HousesInfo.dart';
import 'package:immobilien_app/TopMenu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [MAIN_COLOR_1, MAIN_COLOR_2],
          ),
        ),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  MAIN_COLOR_1,
                  MAIN_COLOR_2,
                ],
              ),
            ),
            child: Column(
              children: [
                TopMenu(),
                CityInfo(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Divider(
                    color: TEXT_COLOR1,
                    endIndent: 20.0,
                    indent: 20.0,
                    thickness: 2.0,
                  ),
                ),
                Filters(),
                HousesInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
