// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_ambw_c14210048/bookmarkPageKosong.dart';
import 'package:uts_ambw_c14210048/cardMenu.dart';
import 'package:uts_ambw_c14210048/cardResto.dart';
import 'package:uts_ambw_c14210048/discoveryPageKosong.dart';
import 'package:uts_ambw_c14210048/mealDeals.dart';
import 'package:uts_ambw_c14210048/mostPopular.dart';
import 'package:uts_ambw_c14210048/profilePageKosong.dart';
import 'package:uts_ambw_c14210048/topFoodiePageKosong.dart';

// Navbar
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  var screen = [
    HomePage(),
    DiscoveryPage(),
    BookmarkPage(),
    TopFoodiePage(),
    ProfilePage()
  ];

  var bottomNavigationIcon = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.pin_drop),
        label: 'Discovery',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.bookmark),
        label: 'Bookmark',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.emoji_events_sharp),
        label: 'Top Foodie',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
        backgroundColor: Colors.white),
  ];

  List<BottomNavigationBarItem> getBottomNavigationItems() {
    return bottomNavigationIcon;
  }

  List<Widget> getScreen() {
    return screen;
  }

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavigationItems = getBottomNavigationItems();
    final currentScreen = getScreen();

    return Scaffold(
      body: currentScreen[_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: bottomNavigationItems,
        currentIndex: _index,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Home Page
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// array asset most popular
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

// array asset meal deals
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

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.yellow,
        ),
        title: Text(
          "UTS AMBW c14210048",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Search for restaurants...",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CarouselSlider(
              items: [
                Container(
                  child: Stack(
                    children: [
                      Image.asset("assets/makanan1.jpg", fit: BoxFit.fill),
                      Positioned(
                        child: Text(
                          "Thai Style",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        bottom: 26,
                        left: 12,
                      ),
                      Positioned(
                        child: Text("12 Places",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        bottom: 10,
                        left: 12,
                      ),
                      Positioned(
                        child: Container(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.grey,
                              ),
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        bottom: 15,
                        right: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Image.asset("assets/makanan2.jpg", fit: BoxFit.fill),
                      Positioned(
                        child: Text(
                          "Indonesian Style",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        bottom: 26,
                        left: 12,
                      ),
                      Positioned(
                        child: Text("20 Places",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        bottom: 10,
                        left: 12,
                      ),
                      Positioned(
                        child: Container(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.grey,
                              ),
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        bottom: 15,
                        right: 8,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Image.asset("assets/makanan3.jpg", fit: BoxFit.fill),
                      Positioned(
                        child: Text(
                          "US Style",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        bottom: 26,
                        left: 12,
                      ),
                      Positioned(
                        child: Text("10 Places",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        bottom: 10,
                        left: 12,
                      ),
                      Positioned(
                        child: Container(
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.grey,
                              ),
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.grey,
                              ),
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.white,
                              )
                            ],
                          ),
                        ),
                        bottom: 15,
                        right: 8,
                      )
                    ],
                  ),
                ),
              ],
              options: CarouselOptions(
                height: MediaQuery.of(context).size.width * (9 / 16),
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MostPopular())),
                    child: Text(
                      "See All",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CardResto(
                      gambar: _arrayGambar[index],
                      nama: _arrayNama[index],
                      alamat: _arrayAlamat[index],
                      kategori: _arrayKategori[index],
                    ),
                  );
                },
                itemCount: 6,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Meal Deals",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MealDeals())),
                    child: Text(
                      "See All",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CardMenu(
                      gambar: _arrayGambar2[index],
                      nama: _arrayNama2[index],
                      harga: _arrayHarga[index],
                      rating: _arrayRating[index],
                    ),
                  );
                },
                itemCount: 6,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
