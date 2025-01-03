import 'package:flutter/material.dart';

import 'package:acha/widgets/container/appbar/acha_appbar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const NotificationScreen()
    );
  }
}

class _NotificationScreenState extends State<NotificationScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: AchaAppbar()
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 43,
                margin: EdgeInsets.only(bottom: 18),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 242,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 237, 239, 242)
                    ),
                    child: TabBar(
                      controller: _tabController,
                      padding: EdgeInsets.all(3),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      dividerColor: Colors.transparent,
                      labelColor: Colors.black,
                      unselectedLabelColor: Color.fromARGB(255, 186, 186, 186),
                      tabs: [
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "전체",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Pretendard",
                                fontWeight: FontWeight.w500
                              )
                            )
                          )
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "강의",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Pretendard",
                                fontWeight: FontWeight.w500
                              )
                            )
                          )
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "과제",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Pretendard",
                                fontWeight: FontWeight.w500
                              )
                            )
                          )
                        )
                      ]
                    )
                  )
                )
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height+ 1000,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height + 500,
                          decoration: BoxDecoration(
                            color: Colors.blue
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height + 100,
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),
                        )
                      ]
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height + 500,
                          decoration: BoxDecoration(
                            color: Colors.blue
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height + 100,
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),
                        )
                      ]
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height + 500,
                          decoration: BoxDecoration(
                            color: Colors.blue
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height + 100,
                          decoration: BoxDecoration(
                            color: Colors.red
                          )
                        )
                      ]
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}