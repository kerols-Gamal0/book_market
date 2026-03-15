import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key});
  List<Map<String, String>> books = [
    {
      "image": "assets/images/C1.png",
      "title": "The Da vinci Code",
      "price": "\$19.99",
    },
    {
      "image": "assets/images/C2.png",
      "title": "Carrie Fisher",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C3.png",
      "title": "The Good Sister",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C4.png",
      "title": "The Waiting",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C5.png",
      "title": "Where Are You",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C6.png",
      "title": "Bright Young Women",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C1.png",
      "title": "The Da vinci Code",
      "price": "\$19.99",
    },
    {
      "image": "assets/images/C2.png",
      "title": "Carrie Fisher",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C3.png",
      "title": "The Good Sister",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C4.png",
      "title": "The Waiting",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C5.png",
      "title": "Where Are You",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C6.png",
      "title": "Bright Young Women",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C1.png",
      "title": "The Da vinci Code",
      "price": "\$19.99",
    },
    {
      "image": "assets/images/C2.png",
      "title": "Carrie Fisher",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C3.png",
      "title": "The Good Sister",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C4.png",
      "title": "The Waiting",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C5.png",
      "title": "Where Are You",
      "price": "\$27.12",
    },
    {
      "image": "assets/images/C6.png",
      "title": "Bright Young Women",
      "price": "\$27.12",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: books.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: Image.asset(
                      books[index]['image']!,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      books[index]['title']!,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      books[index]['price']!,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color(0xff54408C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
