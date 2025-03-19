import 'package:flutter/material.dart';

import 'package:acha/core/constants/index.dart';

class NotificationTabbar extends StatelessWidget {
  const NotificationTabbar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Center(
        child: _buildTabBarContainer(),
      ),
    );
  }

  Widget _buildTabBarContainer() {
    return Container(
      width: 242,
      height: 43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AchaColors.gray237_239_242,
      ),
      child: TabBar(
        controller: tabController,
        padding: const EdgeInsets.all(3),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AchaColors.white,
        ),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        dividerColor: Colors.transparent,
        labelColor: AchaColors.black,
        unselectedLabelColor: AchaColors.gray186,
        tabs: _buildTabs(),
      ),
    );
  }

  List<Widget> _buildTabs() {
    return const [
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
            ),
          ),
        ),
      ),
    ];
  }
}
