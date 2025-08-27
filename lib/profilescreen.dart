import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Profile
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage("https://i.pravatar.cc/150"),
                  ),
                  SizedBox(height: 8),
                  Text("Mulyono",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("Flutter Developer"),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.message, size: 32, color: Colors.blue),
                      Icon(Icons.call, size: 32, color: Colors.green),
                      Icon(Icons.settings, size: 32, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),

            // List Menu
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.history)),
              title: Text("Riwayat"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.favorite)),
              title: Text("Favorit"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.logout)),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
