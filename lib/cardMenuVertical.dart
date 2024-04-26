import 'package:flutter/material.dart';

class CardMenu2 extends StatelessWidget {
  String gambar;
  String nama;
  String harga;
  String rating;

  CardMenu2(
      {super.key,
      required this.gambar,
      required this.nama,
      required this.harga,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * (8 / 15),
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              child: Image.asset(
                gambar,
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(harga, style: TextStyle(fontSize: 18)),
                Row(
                  children: [
                    Icon(Icons.star, size: 18),
                    Text(
                      rating,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
