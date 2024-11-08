import 'package:flutter/material.dart';
import 'package:mevivu/widget/button_custom.dart';
import 'package:mevivu/widget/card_custom.dart';
import 'package:mevivu/widget/card_small_custom.dart';
import 'package:mevivu/widget/navigation_drawer.dart';
import 'package:mevivu/widget/search_bar_custom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedCity;

  final List<String> cities = [
    'Jakarta',
    'Hồ Chí Minh',
    'newyork',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Location",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              DropdownButton<String>(
                hint: const Text("select city"),
                value: selectedCity,
                items: cities.map((city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(
                      city,
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                },
                // underline: Container(),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  top: -4,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const NavigationDrawerCustom(),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SearchBarCustom(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ButtonCustom(
                      text: "House",
                      selected: true,
                    ),
                    ButtonCustom(
                      text: "Apartment",
                    ),
                    ButtonCustom(
                      text: "Hotel",
                    ),
                    ButtonCustom(
                      text: "Villa",
                    ),
                    ButtonCustom(
                      text: "Motel",
                    ),
                    ButtonCustom(
                      text: "Bar",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near from you",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "see more",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardCustom(
                      url:
                          "https://archipro.com.au/images/s1/article/building/Form-Apartments-Port-Coogee-by-Stiebel-Eltron-.jpg/eyJlZGl0cyI6W3sidHlwZSI6InpwY2YiLCJvcHRpb25zIjp7ImJveFdpZHRoIjoxOTIwLCJib3hIZWlnaHQiOjE1NTgsImNvdmVyIjp0cnVlLCJ6b29tV2lkdGgiOjIzMTcsInNjcm9sbFBvc1giOjU2LCJzY3JvbGxQb3NZIjozMywiYmFja2dyb3VuZCI6InJnYigxMTUsMTQwLDE5NCkiLCJmaWx0ZXIiOjZ9fSx7InR5cGUiOiJmbGF0dGVuIiwib3B0aW9ucyI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9fV0sInF1YWxpdHkiOjg3LCJ0b0Zvcm1hdCI6ImpwZyJ9",
                    ),
                    CardCustom(
                      url:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRipt2wNaoi3KxHaR0oq0p6AFQX0EjOKI26w&s",
                    ),
                    CardCustom(
                      url:
                          "https://sweeten.com/wp-content/uploads/2023/04/115500-Samantha-Kitchen-02.webp",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best for you",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "see more",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CardSmallCustom(
                      url:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxHwCpAgM-w8ITGyJ_232mKsdTxhaO0dJDzA&s",
                      room: "Orchad House",
                      price: "2.500.000.000",
                      bedroom: 6,
                      bathroom: 4,
                    ),
                    CardSmallCustom(
                      url:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxHwCpAgM-w8ITGyJ_232mKsdTxhaO0dJDzA&s",
                      room: "The Hollies House",
                      price: "2.000.000.000",
                      bedroom: 5,
                      bathroom: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
