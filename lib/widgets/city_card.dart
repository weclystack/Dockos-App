import 'package:dockos/theme.dart';
import 'package:flutter/material.dart';
import 'package:dockos/models/city.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(
    this.city, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xff1F1D2B),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl ?? 'assets/city1.png',
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopuler
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/star.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name ?? "null",
              style: whiteTextStyle.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
