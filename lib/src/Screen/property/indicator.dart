import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';

class Indicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Shimmer.fromColors(
        baseColor: IconPallete.menuBluebird,
        highlightColor: IconPallete.menuRide,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/img/logos.png",
                scale: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FontAwesomeIcons.circle,
                      color: IconPallete.menuRide,
                      size: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FontAwesomeIcons.circle,
                      color: IconPallete.menuCar,
                      size: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FontAwesomeIcons.circle,
                      color: IconPallete.menuMart,
                      size: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FontAwesomeIcons.circle,
                      color: IconPallete.menuSend,
                      size: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FontAwesomeIcons.circle,
                      color: IconPallete.menuFood,
                      size: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FontAwesomeIcons.circle,
                      color: IconPallete.menuFood,
                      size: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FontAwesomeIcons.circle,
                      color: IconPallete.menuFood,
                      size: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
  );
  }
}