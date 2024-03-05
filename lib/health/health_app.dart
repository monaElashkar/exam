import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HealthApp extends StatefulWidget {
  const HealthApp({Key? key}) : super(key: key);

  @override
  State<HealthApp> createState() => _HealthAppState();
}

class _HealthAppState extends State<HealthApp> {
  List<Map<String, String>> images = [
    {"image": "assets/images/love.png", "text": "Love"},
    {"image": "assets/images/cool.png", "text": "Cool"},
    {"image": "assets/images/happy.png", "text": "Happy"},
    {"image": "assets/images/sad.png", "text": "Sad"},
  ];
  int currentIndex = 0;
  List items = [1, 2, 3];
  List Exercise = [
    "assets/images/relaxation.png",
    "assets/images/meditation.png",
    "assets/images/beathing.png",
    'assets/images/yoga.png',
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
        SafeArea(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 40,
                    width: 120,
                  ),
                  const Badge(
                    alignment: Alignment.topRight,
                    smallSize: 10,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(
                        color: Color(0xff371B34),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " Sara Rose",
                    style: TextStyle(
                        color: Color(0xff371B34),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "How are you feeling today ?",
                style: TextStyle(
                    color: Color(0xff371B34),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset("${images[index]["image"]}"),
                          backgroundColor: const Color(0xffE4E7EC),
                          radius: 30,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "${images[index]["text"]}",
                          style: const TextStyle(
                              color: Color(0xff371B34),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 24,
                    );
                  },
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(
                        color: Color(0xff371B34),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        Text(
                          "See more ",
                          style: TextStyle(
                              color: Color(0xff027A48),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff027A48),
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  itemCount: items.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return Container(
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                          color: const Color(0xffECFDF3),
                          borderRadius: BorderRadius.circular(20),
                          border: const Border()),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Positive vibes",
                                  style: TextStyle(
                                      color: Color(0xff371B34),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Boost your mood with \npositive vibes",
                                  style: TextStyle(
                                      color: Color(0xff371B34),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset(
                                        'assets/images/Button.png',
                                        fit: BoxFit.cover,
                                        height: 25,
                                        width: 25,
                                      ),
                                      backgroundColor: Colors.white,
                                      radius: 10,
                                    ),
                                    const Text(
                                      "   10 mins",
                                      style: TextStyle(
                                          color: Color(0xff371B34),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                                child: Image.asset(
                              'assets/images/WalkingtheDog.png',
                            )),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: items.length,
                  position: currentIndex,
                  decorator: const DotsDecorator(
                      color: Color(0xffD9D9D9), activeColor: Color(0xff98A2B3)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercise",
                    style: TextStyle(
                        color: Color(0xff371B34),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        Text(
                          "See more ",
                          style: TextStyle(
                              color: Color(0xff027A48),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff027A48),
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: Exercise.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2,
                      childAspectRatio: 2,
                    ),
                    itemBuilder: (context, index){
                      return Image.asset(Exercise[index],height: 20,);
                    }),
              )
            ],
          ),
      ),
        ),
    );
  }
}
