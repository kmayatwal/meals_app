import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/MealDetailPage';

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('$routeArg'),
      ),
      body: Center(
        child: Text('This is Meal Detail $routeArg'),
      ),
    );
  }
}
