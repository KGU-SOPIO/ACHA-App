import 'package:flutter/material.dart';

class NotificationTabbar extends StatelessWidget {
  const NotificationTabbar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 43,
      margin: const EdgeInsets.only(bottom: 18),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 242,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 237, 239, 242),
          ),
          child: TabBar(
            controller: tabController,
            padding: const EdgeInsets.all(3),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            dividerColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor:
                const Color.fromARGB(255, 186, 186, 186),
            tabs: const [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '전체',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '강의',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '과제',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}