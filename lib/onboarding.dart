import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ieee_final_project/LogIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> finishOnboarding() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('seenOnboarding', true);
}

class DataModel {
  String imageUrl;
  String title;
  String description;
  DataModel({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<DataModel> dataList = [
    DataModel(
      imageUrl: "assets/images/on1.png",
      title: "Now reading books will be easier",
      description:
          " Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.",
    ),
    DataModel(
      imageUrl: "assets/images/on2.png",
      title: "Your Bookish Soulmate Awaits",
      description:
          "Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.",
    ),
    DataModel(
      imageUrl: "assets/images/on3.png",
      title: "Start Your Adventure",
      description:
          "Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let's go!",
    ),
  ];
  int currentIndex = 0;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text("Skip", style: TextStyle(color: Color(0xff54408C))),
            ),
          ),
          SizedBox(
            height: 300,
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final item = dataList[index];
                return Image.asset(item.imageUrl);
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            dataList[currentIndex].title,
            style: TextStyle(fontSize: 20, fontWeight: .bold),
          ),
          SizedBox(height: 20),
          Text(dataList[currentIndex].description, textAlign: .center),
          SizedBox(height: 20),
          DotsIndicator(
            dotsCount: dataList.length,
            position: currentIndex.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(300, 40),
              backgroundColor: Color(0xff54408C),
            ),
            onPressed: () async {
              if (currentIndex < dataList.length - 1) {
                _controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                await finishOnboarding();

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              }
            },
            child: Text(
              currentIndex != 2 ? "continue" : "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
