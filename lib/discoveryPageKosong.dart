import 'package:flutter/material.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.yellow,
        ),
        title: Text(
          "Discovery Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/wallpaper1.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 138,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
