import 'package:flutter/material.dart';
import 'package:immobilien_app/Constants.dart';

class HousesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(
          top: 20.0,
        ),
        child: Row(
          children: [
            House(imageRoot: 'assets/images/house1.jpg', price: '€200.000'),
            House(imageRoot: 'assets/images/house2.jpg', price: '€150.000'),
            House(imageRoot: 'assets/images/house3.jpg', price: '€345.000'),
            House(imageRoot: 'assets/images/house4.jpg', price: '€90.000'),
            House(imageRoot: 'assets/images/house5.jpg', price: '€3.500.000'),
            House(imageRoot: 'assets/images/house6.jpg', price: '€191.000'),
          ],
        ),
      ),
    );
  }
}

class House extends StatelessWidget {
  final String imageRoot;
  final String price;

  const House({Key key, @required this.imageRoot, @required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(width: 0.0, color: TEXT_COLOR3),
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
        color: TEXT_COLOR1,
      ),
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(BORDER_RADIUS),
                child: Image.asset(
                  imageRoot,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: TextProvider(
              textSize: 25,
              textColor: TEXT_COLOR3,
              textContent: price,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  padding: EdgeInsets.all(15.0),
                  color: MAIN_COLOR_1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      BORDER_RADIUS,
                    ),
                  ),
                  onPressed: () {},
                  child: TextProvider(
                    textColor: TEXT_COLOR1,
                    textContent: 'Auf die Merkliste',
                    textSize: 15.0,
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: TEXT_COLOR3),
                    borderRadius: BorderRadius.circular(
                      BORDER_RADIUS,
                    ),
                  ),
                  onPressed: () {},
                  child: TextProvider(
                    textColor: TEXT_COLOR3,
                    textContent: 'Ausblenden',
                    textSize: 12.0,
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
