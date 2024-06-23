import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutteruselwidgets/useful_widgets/star_rating/viewmodel/star_rating_viewmodel.dart';
import 'package:provider/provider.dart';

class StarRatingScreen extends StatelessWidget {
  const StarRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final starRatingViewmodel =
        Provider.of<StarRatingViewmodel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey,
        padding: EdgeInsets.all(36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Horizontal example'),
            Consumer<StarRatingViewmodel>(
              builder: (context, provider, _) {
                return RatingStars(
                  value: provider.value,
                  onValueChanged: (v) {
                    provider.updateRating(v);
                  },
                  starBuilder: (index, color) => Icon(
                    Icons.accessibility_new,
                    color: color,
                  ),
                  starCount: 5,
                  starSize: 20,
                  valueLabelColor: const Color(0xff9b9b9b),
                  valueLabelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0),
                  valueLabelRadius: 10,
                  maxValue: 5,
                  starSpacing: 2,
                  maxValueVisibility: true,
                  valueLabelVisibility: true,
                  animationDuration: Duration(milliseconds: 1000),
                  valueLabelPadding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                  valueLabelMargin: const EdgeInsets.only(right: 8),
                  starOffColor: const Color(0xffe7e8ea),
                  starColor: Colors.yellow,
                );
              },
            ),
            const Divider(height: 10),
            Text('Vertical example'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Consumer<StarRatingViewmodel>(
                  builder: (context, provider, _) {
                    return RatingStars(
                      axis: Axis.vertical,
                      value: provider.value,
                      onValueChanged: (v) {
                        provider.updateRating(v);
                      },
                      starCount: 5,
                      starSize: 20,
                      valueLabelColor: const Color(0xff9b9b9b),
                      valueLabelTextStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0),
                      valueLabelRadius: 10,
                      maxValue: 5,
                      starSpacing: 2,
                      maxValueVisibility: true,
                      valueLabelVisibility: true,
                      animationDuration: Duration(milliseconds: 1000),
                      valueLabelPadding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 8),
                      valueLabelMargin: const EdgeInsets.only(right: 8),
                      starOffColor: const Color(0xffe7e8ea),
                      starColor: Colors.yellow,
                    );
                  },
                ),
              ],
            ),
            const Divider(height: 10),
            const Text('Rotate example'),
            Consumer<StarRatingViewmodel>(
              builder: (context, provider, _) {
                return RatingStars(
                  axis: Axis.horizontal,
                  value: provider.value,
                  onValueChanged: (v) {
                    provider.updateRating(v);
                  },
                  starCount: 5,
                  starSize: 20,
                  valueLabelColor: const Color(0xff9b9b9b),
                  valueLabelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0),
                  valueLabelRadius: 10,
                  maxValue: 5,
                  starSpacing: 2,
                  maxValueVisibility: true,
                  valueLabelVisibility: true,
                  animationDuration: Duration(milliseconds: 1000),
                  valueLabelPadding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                  valueLabelMargin: const EdgeInsets.only(right: 8),
                  starOffColor: const Color(0xffe7e8ea),
                  starColor: Colors.yellow,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
