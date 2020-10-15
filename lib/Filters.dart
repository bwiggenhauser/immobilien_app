import 'package:flutter/material.dart';
import 'package:immobilien_app/Constants.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              FilterItem(
                filterContent: '< €75.000',
              ),
              FilterItem(
                filterContent: '€75.000 - €150.000',
              ),
              FilterItem(
                filterContent: '€150.000 - €250.000',
              ),
              FilterItem(
                filterContent: '€250.000 - €500.000',
              ),
              FilterItem(
                filterContent: '> €500.000',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  final String filterContent;

  const FilterItem({Key key, this.filterContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: FlatButton(
        color: TEXT_COLOR1,
        splashColor: TEXT_COLOR1,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BORDER_RADIUS * 10),
        ),
        onPressed: () {},
        child: TextProvider(
          textColor: TEXT_COLOR3,
          textContent: filterContent,
          textSize: 12.0,
        ),
      ),
    );
  }
}
