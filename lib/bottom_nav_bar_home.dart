import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'home_data.dart';
import 'home_widget.dart';

class BottomNavBarHome extends StatefulWidget {
  const BottomNavBarHome({super.key});

  @override
  State<BottomNavBarHome> createState() => _BottomNavBarHomeState();
}

int currentIndex = 0;
int quantityValue = 1;

class _BottomNavBarHomeState extends State<BottomNavBarHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 146,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Special Offer",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Discount %25",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/Apollo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blueGrey,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Special Offer",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Discount %25",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/Apollo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.deepOrangeAccent[100],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Special Offer",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Discount %25",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/Apollo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        DotsIndicator(dotsCount: 3, position: currentIndex.toDouble()),
        buildHorizontalSection(
          title: "Top of Week",
          height: 240,
          items: topBooks.map((book) => buildBookItem(book, context)).toList(),
        ),
        buildHorizontalSection(
          title: "Best Vendors",
          height: 100,
          items: vendors.map((v) => buildVendorItem(v)).toList(),
        ),
        buildHorizontalSection(
          title: "Authors",
          height: 160,
          items: authors.map((author) => buildAuthorItem(author)).toList(),
        ),
      ],
    );
  }
}
