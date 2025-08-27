import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Screen")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: 
                NetworkImage('https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60%27'))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  6,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus augue enim, sagittis vel dapibus volutpat, hendrerit nec mauris. Etiam porta, orci quis rutrum dapibus, massa est fermentum nibh, mattis lobortis orci neque sit amet ligula. Cras ut nisi interdum, volutpat orci tempus, pharetra erat. Donec fermentum, odio at egestas consectetur, dui leo vehicula felis, at tempor justo neque a orci. Praesent pharetra odio elit, sed cursus metus finibus nec. Ut vitae arcu turpis. Nullam at auctor orci, eget porta metus. Integer volutpat est quis cursus elementum. Nunc eget ligula sit amet lacus vulputate pellentesque vel a ipsum. Nullam suscipit scelerisque quam, eget molestie felis pretium id. Pellentesque eu leo imperdiet, vestibulum ante sit amet, lacinia nibh. Fusce vel eros nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
