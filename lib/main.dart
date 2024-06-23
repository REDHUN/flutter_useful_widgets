import 'package:flutter/material.dart';
import 'package:flutteruselwidgets/useful_widgets/star_rating/view/star_rating_view.dart';
import 'package:flutteruselwidgets/useful_widgets/star_rating/viewmodel/star_rating_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<StarRatingViewmodel>(
      create: (_) => StarRatingViewmodel(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  double value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StarRatingScreen());
  }
}
