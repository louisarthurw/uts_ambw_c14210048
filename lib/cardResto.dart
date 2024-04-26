import 'package:flutter/material.dart';

class CardResto extends StatelessWidget {
  String gambar;
  String nama;
  String alamat;
  String kategori;

  CardResto(
      {super.key,
      required this.gambar,
      required this.nama,
      required this.alamat,
      required this.kategori});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 150,
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
                    fontSize: 16,
                  ),
                ),
                Text(alamat, style: TextStyle(fontSize: 14)),
                Text(
                  kategori,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
