import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String buttonText = "Check Out Bloggrs";
    String description =
        "Lorem Ipsum teeens hasstandard dummy text  industry's standard industry's standard ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstProject(description, buttonText),
    );
  }

  Scaffold postPage(String description) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "New Post",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(right: 8),
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 18,
                        color: Colors.amber,
                      ),
                      Text(
                        "Save",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Divider(),
            ),
            Container(
              height: 260,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/lebrn.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 16),
              child: Text(
                "Great island with waterfall",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              description,
              style: TextStyle(letterSpacing: 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(),
            ),
            Row(
              children: [
                Icon(
                  Icons.local_activity,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text("Photo by Andre Hunter on Unsplash"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text("Los Angeles, CA"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(),
            ),
            Row(
              children: [
                Icon(
                  Icons.date_range,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text("January 16, 2019"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }

  Widget firstProject(String description, String buttonText) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Image.asset("assets/images/splash.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Text(
                "Welcome to",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 32,
                ),
              ),
            ),
            Text(
              "Bloggr",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                description,
                style: TextStyle(
                    color: Colors.black54, letterSpacing: 0, height: 1.2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlue.withOpacity(0.25),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlue[800],
                    fontSize: 15,
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
