import 'package:flutter/material.dart';

class FavorietsScreen extends StatelessWidget {
  const FavorietsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Favorites Screen",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
