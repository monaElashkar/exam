import 'package:flutter/material.dart';

class WorkOutApp extends StatefulWidget {
  const WorkOutApp({Key? key}) : super(key: key);

  @override
  State<WorkOutApp> createState() => _WorkOutAppState();
}

class _WorkOutAppState extends State<WorkOutApp> {
  List<String> items = ["assets/images/HotTopics1.png","assets/images/HotTopics2.png"];
  List<Map<String,dynamic>> doctors=[
    {
      "name":"Connect with doctors & get suggestions",
      "improve":"Connect now and get expert insights ",
      "image":"assets/images/Doctor-PNG-Images 1.png",
    },
    {
      "name":"Connect with doctors & get suggestions",
      "improve":"Connect now and get expert insights ",
      "image":"assets/images/Doctor-PNG-Images 1.png",
    },
    {
      "name":"Connect with doctors & get suggestions",
      "improve":"Connect now and get expert insights ",
      "image":"assets/images/Doctor-PNG-Images 1.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Image.asset("assets/images/logoWorkout.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xffD0D5DD),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffD0D5DD), width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffD0D5DD), width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffD0D5DD), width: 1)),
                          hintText: "Articles, Video, Audio and More,...",
                          helperStyle: const TextStyle(
                              fontSize: 16, color: Color(0xffD0D5DD))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: const Color(0xff6941C6),
                    unselectedLabelColor: const Color(0xff667085),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFfF4EBFF),
                        border: Border.all(color: const Color(0xffD6BBFB), width: 1)),
                    tabs: const [
                      Tab(
                        text: "Discover",
                      ),
                      Tab(
                        text: "News",
                      ),
                      Tab(
                        text: "Most Viewed",
                      ),
                      Tab(
                        text: "Saved",
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hot topics",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "See all ",
                                      style: TextStyle(
                                          color: Color(0xff5925DC),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xff5925DC),
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: 180,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 180,
                                    width: 320,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffEAECF5),
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image:AssetImage(items[index]),
                                          fit: BoxFit.cover
                                        ),
                                        // border: const Border()
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    width: 20,
                                  );
                                },
                                itemCount: items.length),
                          ),
                          const SizedBox(height: 10,),
                          const Text(
                            "Get Tips",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(height: 180,
                          child:  ListView.separated(
                            scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Container(
                                  height: 180,
                                  width: 320,
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
                                        Expanded(
                                            child: Image.asset(
                                              "${doctors[index]["image"]}",
                                              //  "assets/images/MorningYogaImage.png"
                                              //"assets/images/PlankExerciseImage.png"
                                            )),
                                        SizedBox(
                                          width: 180,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Expanded(
                                                child: Text(
                                                  "${doctors[index]["name"]} ",
                                                  style: const TextStyle(
                                                      color: Color(0xff371B34),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w700),

                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                " ${doctors[index]["improve"]} ",
                                                style: const TextStyle(
                                                    color: Color(0xff371B34),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: const Color(0xff7F56D9),
                                                    borderRadius: BorderRadius.circular(10),
                                                    border:  Border.all(color:const Color(0xff7F56D9),width: 1 )
                                                ),
                                                padding:  const EdgeInsets.all(10),
                                                child:  const Text(
                                                  "View detail",
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w700),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context,index){
                                return const SizedBox(
                                  width: 20,
                                );
                              },
                              itemCount: items.length
                          ),
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cycle Phases and Period",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "See all ",
                                      style: TextStyle(
                                          color: Color(0xff5925DC),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xff5925DC),
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                        ],
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
