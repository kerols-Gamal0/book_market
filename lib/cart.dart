import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double price1 = 20.99;
  double price2 = 27.12;
  int q1 = 2;
  int q2 = 1;
  @override
  Widget build(BuildContext context) {
    double subtotal = (price1 * q1) + (price2 * q2);
    double total = subtotal + 30;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/C6.png",
                    width: 75,
                    height: 95,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Regular Fit Slogan",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                            size: 22,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ $price1",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      q1--;
                                      subtotal;
                                      total;
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Text(
                                  "$q1",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      q1++;
                                      subtotal;
                                      total;
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/C5.png",
                    width: 75,
                    height: 95,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "where are you",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                            size: 22,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ $price2",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      q2--;
                                      subtotal;
                                      total;
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Text(
                                  "$q2",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      q2++;
                                      subtotal;
                                      total;
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Sub-total",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              Text(
                "\$ $subtotal",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Text(
                  "VAT  ( % )",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              Text(
                "\$ 0.00",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Shipping fee",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              Text(
                "\$ 30",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(indent: 5, endIndent: 5),
          SizedBox(height: 5),

          Row(
            children: [
              Expanded(
                child: Text(
                  "Total",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Text(
                "\$ $total",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 15),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            color: Colors.black,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Go To Checkout", style: TextStyle(color: Colors.white)),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
