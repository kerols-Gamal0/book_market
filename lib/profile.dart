import 'package:flutter/material.dart';
import 'package:ieee_final_project/LogIn.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Divider(),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            child: Image.asset("assets/images/Profile.png"),
          ),
          title: Text("Kero Gamal", style: TextStyle(fontWeight: .bold)),
          subtitle: Text(
            "(+20) 0120 237 7475",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: TextButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false,
              );
            },
            child: Text("LogOut", style: TextStyle(color: Colors.red)),
          ),
        ),
        Divider(),
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 25,
            child: Icon(Icons.person, color: Color(0xff54408C)),
          ),
          title: Text("My Account", style: TextStyle(fontWeight: .bold)),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
        SizedBox(height: 5),
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 25,
            child: Icon(Icons.location_on, color: Color(0xff54408C)),
          ),
          title: Text("Address", style: TextStyle(fontWeight: .bold)),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
        SizedBox(height: 5),
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 25,
            child: Image.asset("assets/images/Fire.png"),
          ),
          title: Text("Offers & Promos", style: TextStyle(fontWeight: .bold)),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
        SizedBox(height: 5),
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 25,
            child: Icon(Icons.favorite_outlined, color: Color(0xff54408C)),
          ),
          title: Text("Your Favorites", style: TextStyle(fontWeight: .bold)),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
        SizedBox(height: 5),
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 25,
            child: Icon(Icons.description, color: Color(0xff54408C)),
          ),
          title: Text("Order History", style: TextStyle(fontWeight: .bold)),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
        SizedBox(height: 5),
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 25,
            child: Icon(Icons.sms_rounded, color: Color(0xff54408C)),
          ),
          title: Text("Help Center", style: TextStyle(fontWeight: .bold)),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
      ],
    );
  }
}
