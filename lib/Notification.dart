import 'package:flutter/material.dart';

class Notification_Screen extends StatelessWidget {
  const Notification_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildOrderItem(
      String title,
      String status,
      String count,
      String img,
      Color statusColor,
    ) {
      return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(img, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Row(
          children: [
            Text(
              status,
              style: TextStyle(color: statusColor, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 8),
            Icon(Icons.circle, size: 4, color: Colors.grey[600]),
            SizedBox(width: 8),
            Text(count, style: TextStyle(color: Colors.grey[600])),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
            fontSize: 25,
            fontWeight: .bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Current",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: buildOrderItem(
              "Carrie Fisher",
              "On the way",
              "1 items",
              "assets/images/C1.png",
              Colors.blue,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "October 2021",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                buildOrderItem(
                  "The Da vinci Code",
                  "Delivered",
                  "1 items",
                  "assets/images/C2.png",
                  Colors.green,
                ),
                Divider(height: 1),
                buildOrderItem(
                  "Carrie Fisher",
                  "Delivered",
                  "5 items",
                  "assets/images/C4.png",
                  Colors.green,
                ),
                Divider(height: 1),
                buildOrderItem(
                  "The Waiting",
                  "Cancelled",
                  "2 items",
                  "assets/images/C6.png",
                  Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
