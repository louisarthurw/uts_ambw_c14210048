import 'package:flutter/material.dart';
import 'package:uts_ambw_c14210048/cardMenuVertical.dart';

class MealDeals extends StatefulWidget {
  const MealDeals({super.key});

  @override
  State<MealDeals> createState() => _MealDealState();
}

var _arrayGambar2 = [
  "assets/menu1.jpg",
  "assets/menu2.jpg",
  "assets/menu3.jpg",
  "assets/menu4.jpg",
  "assets/menu5.jpg",
  "assets/menu6.jpg"
];

var _arrayNama2 = [
  "Fried Chicken",
  "Burrito",
  "French Fries",
  "Sandwich",
  "Pizza",
  "Burger"
];

var _arrayHarga = [
  "Rp30.000",
  "Rp25.000",
  "Rp15.000",
  "Rp50.000",
  "Rp80.000",
  "Rp35.000"
];

var _arrayRating = [
  "4.8 / 5",
  "4.5 / 5",
  "4.8 / 5",
  "4.9 / 5",
  "5 / 5",
  "4.8 / 5"
];

class _MealDealState extends State<MealDeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.yellow,
        ),
        title: Text(
          "Meal Deals",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: CardMenu2(
              gambar: _arrayGambar2[index],
              nama: _arrayNama2[index],
              harga: _arrayHarga[index],
              rating: _arrayRating[index],
            ),
          );
        },
        itemCount: 6,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
