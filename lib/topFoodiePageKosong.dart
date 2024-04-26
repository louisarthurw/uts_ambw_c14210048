import 'package:flutter/material.dart';

class TopFoodiePage extends StatelessWidget {
  const TopFoodiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.yellow,
        ),
        title: Text(
          "Top Foodie Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/wallpaper3.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 138,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
