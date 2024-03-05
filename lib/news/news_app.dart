import 'package:flutter/material.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  List<Map<String,dynamic>> items=[
    {
      "day":7,
      "name":"Morning Yoga",
      "improve":"Improve mental focus.",
      "time":"30 mins",
      "image":"assets/images/MorningYogaImage.png",
    },
    {
      "day":3,
      "name":"Plank Exercise",
      "improve":"Improve posture and stability.",
      "time":"30 mins",
      "image":"assets/images/PlankExerciseImage.png",
    },
    {
      "day":7,
      "name":"Morning Yoga",
      "improve":"Improve mental focus.",
      "time":"30 mins",
      "image":"assets/images/MorningYogaImage.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar (
                          radius: 25,
                          backgroundImage:ExactAssetImage("assets/images/profileImage.png"),
                        ),
                        const SizedBox(width: 10,),
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello, Jade",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Ready to workout?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                         Badge(
                          alignment: Alignment.topRight,
                          smallSize: 8,
                          backgroundColor: Colors.red,
                          child: Image.asset("assets/images/notificationIcon.png"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:  const Color(0xffF8F9FC),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Row(
                        children: [
                          const Column(

                            children: [
                              Row(
                                children: [
                                  Icon(Icons.favorite_outline_sharp,color: Color(0xff717BBC),),
                                  Text(
                                    "Heart Rate",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],

                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text(
                                    "81",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "BPM",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],

                              ),
                            ],
                          ),
                          const SizedBox(width: 15,),
                          Container(
                            height: 60,
                            color: const Color(0xffD9D9D9),
                            width: 2,
                          ),
                          const SizedBox(width: 15,),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.list,color: Color(0xff717BBC),),
                                  Text(
                                    "To-do",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],

                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text(
                                    "32,5",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "%",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],

                              ),
                            ],
                          ),
                          const SizedBox(width: 15,),
                          Container(
                            height: 60,
                            color: const Color(0xffD9D9D9),
                            width: 2,
                          ),
                          const SizedBox(width: 15,),
                          const Column(

                            children: [
                              Row(
                                children: [
                                  Icon(Icons.local_fire_department_outlined,color: Color(0xff717BBC),),
                                  Text(
                                    "Calo",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],

                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text(
                                    "1000",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Cal",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],

                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Workout Programs",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor:Color(0xff363F72),
                    unselectedLabelColor: Color(0xff667085),
                    indicatorColor: Color(0xff363F72),
                    tabs: [
                      Tab(text: "All Type",),
                      Tab(text: "Full Body",),
                      Tab(text: "Upper",),
                      Tab(text: "Lower",),
                    ]
                ),
              ),
              Expanded(
                child: TabBarView(
                  children:[
                    SizedBox(
                      child: Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 20).add(const EdgeInsets.only(top: 20)),
                        child: ListView.separated(
                            itemBuilder: (context,index){
                              return Container(
                                height: 200,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: const Color(0xffEAECF5),
                                    borderRadius: BorderRadius.circular(10),
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
                                          Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xffFCFCFD),
                                                borderRadius: BorderRadius.circular(20),
                                                border:  Border.all(color:const Color(0xffE4E7EC),width: 1 )
                                            ),
                                          padding:  const EdgeInsets.all(10),
                                            child:  Text(
                                              "${items[index]["day"]} days",
                                              style: const TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                           Text(
                                            "${items[index]["name"]} ",
                                            style: const TextStyle(
                                                color: Color(0xff371B34),
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                           Text(
                                            " ${items[index]["improve"]} ",
                                            style: const TextStyle(
                                                color: Color(0xff371B34),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/timeIcon.png',
                                              ),
                                               Text(
                                                "  ${items[index]["time"]} ",
                                                style: const TextStyle(
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
                                          "${items[index]["image"]}",
                                          //  "assets/images/MorningYogaImage.png"
                                            //"assets/images/PlankExerciseImage.png"
                                          )),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context,index){
                              return const SizedBox(
                                height: 20,
                              );
                            },
                            itemCount: items.length
                        ),
                      ),

                    ),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
