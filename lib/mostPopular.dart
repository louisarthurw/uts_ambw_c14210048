import 'package:flutter/material.dart';
import 'package:uts_ambw_c14210048/cardRestoVertical.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({super.key});

  @override
  State<MostPopular> createState() => _MyWidgetState();
}

var _arrayGambar = [
  "assets/resto1.jpg",
  "assets/resto2.jpg",
  "assets/resto3.jpg",
  "assets/resto4.jpg",
  "assets/resto5.jpg",
  "assets/resto6.jpg"
];

var _arrayNama = [
  "KFC Broadway",
  "Greek House",
  "McDonald's",
  "Subway",
  "Pizza Hut",
  "Burger King"
];

var _arrayAlamat = [
  "122 Queen Street",
  "23 Queen Street",
  "34 King Street",
  "45 Prince Street",
  "56 Princess Street",
  "67 Duke Street"
];

var _arrayKategori = [
  "Fried Chicken, American",
  "Burritos, Greek",
  "Fries, American",
  "Sandwich, American",
  "Pizza, American",
  "Burger, American"
];

class _MyWidgetState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.yellow,
        ),
        title: Text(
          "Most Popular",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: CardResto2(
              gambar: _arrayGambar[index],
              nama: _arrayNama[index],
              alamat: _arrayAlamat[index],
              kategori: _arrayKategori[index],
            ),
          );
        },
        itemCount: 6,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
