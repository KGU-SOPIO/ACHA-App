import 'package:acha/widgets/button/row_container_button.dart';
import 'package:flutter/material.dart';

import 'package:acha/widgets/container/appbar/acha_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';

class CourseMainScreen extends StatefulWidget {
  const CourseMainScreen({super.key});

  @override
  State<CourseMainScreen> createState() => _CourseMainScreenState();

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => CourseMainScreen());
  }
}

class _CourseMainScreenState extends State<CourseMainScreen> {
  List weeks = [
    {
      "week": "1주차",
      "items": ["플립러닝 수업 - 01", "과제 제출 - 01"]
    },
    {
      "week": "2주차",
      "items": ["플립러닝 수업 - 02", "토론 참여 - 02"]
    },
    {
      "week": "3주차",
      "items": ["플립러닝 수업 - 03", "팀 프로젝트 시작"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color.fromARGB(255, 245, 246, 248),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: AchaAppbar(backgroundColor: Colors.white)
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "송명진 교수님",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 30, 30, 30)
                                    )
                                  )
                                ),
                                Text(
                                  "사고와 표현",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 30, 30, 30)
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RowContainerButton(
                            margin: EdgeInsets.only(bottom: 27),
                            padding: EdgeInsets.symmetric(vertical: 17),
                            onPressed: () {},
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.white,
                            border: BorderSide(
                              color: Color.fromARGB(255, 0, 102, 255)
                            ),
                            borderRadius: 20,
                            text: "공지사항",
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: "Pretendard",
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 102, 255)
                            ),
                            widget: SvgPicture.asset("lib/assets/svgs/course/right_arrow.svg")
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 4),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        color: Color.fromARGB(255, 30, 30, 30)
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "주차별 ",
                                          style: TextStyle(fontWeight: FontWeight.w700)
                                        ),
                                        TextSpan(
                                          text: "학습 활동",
                                          style: TextStyle(fontWeight: FontWeight.w500)
                                        )
                                      ]
                                    )
                                  )
                                ),
                                SvgPicture.asset("lib/assets/svgs/course/course_book.svg")
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 160,
                            margin: EdgeInsets.only(bottom: 5),
                            child: StackedListCarousel(
                              items: containers,
                              behavior: CarouselBehavior.loop,
                              cardBuilder: (context, item, size) {
                                return item;
                              },
                              outermostCardHeightFactor: 0.94,
                              itemGapHeightFactor: 0.03,
                              cardAspectRatio: MediaQuery.of(context).size.width / 160,
                              outermostCardAnimationDuration: Duration(milliseconds: 200),
                              autoSlideDuration: Duration(seconds: 5),
                            )
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 27),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: weeks.length,
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> weekData = weeks[index];

                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: ExpansionPanelList.radio(
                          elevation: 0,
                          expandedHeaderPadding: EdgeInsets.zero,
                          children: [
                            ExpansionPanelRadio(
                              canTapOnHeader: true,
                              value: "$index",
                              headerBuilder:(context, isExpanded) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7),
                                  child: ListTile(
                                    leading: Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Icon(Icons.circle, size: 15, color: Color.fromARGB(255, 255, 78, 107))
                                    ),
                                    title: Text(
                                      weekData["week"],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 60, 60, 60)
                                      )
                                    )
                                  )
                                );
                              },
                              body: Column(
                                children: [
                                  Divider(height: 1, color: Color.fromARGB(255, 245, 246, 248)),
                                  ...weekData["items"].map((item) {
                                    return ListTile(
                                      leading: SvgPicture.asset("lib/assets/svgs/course/video.svg"),
                                      title: Text(
                                        item,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Pretendard",
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(255, 60, 60, 60)
                                        ),
                                      ),
                                    );
                                  })
                                ]
                              )
                            )
                          ],
                        )
                      )
                    );
                  },
                )
              )
            ]
          )
        )
      )
    );
  }

  List containers = [
    Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 237, 239, 242)
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "1주차",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 30, 30, 30)
              )
            )
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 237, 239, 242),
                width: 1.5
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                SvgPicture.asset("lib/assets/svgs/course/video.svg"),
                Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    "1주차 플립러닝 수업",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 60, 60, 60)
                    ),
                  )
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 237, 239, 242)
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "1주차",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 30, 30, 30)
              )
            )
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 237, 239, 242),
                width: 1.5
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                SvgPicture.asset("lib/assets/svgs/course/video.svg"),
                Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    "1주차 플립러닝 수업",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 60, 60, 60)
                    ),
                  )
                )
              ],
            ),
          )
        ],
      ),
    )
  ];
}