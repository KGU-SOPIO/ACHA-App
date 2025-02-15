import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContentSkeletonContainer extends StatelessWidget {
  const ContentSkeletonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 20),
          _buildBody()
        ]
      )
    );
  }

  Widget _buildHeader() {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 228, 232, 241)
          )
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const Text('Skeleton_Skeleton', style: TextStyle(fontSize: 14)),
          const SizedBox(height: 10),
          const Text('Skeleton_Skeleton_Ske', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          _buildInformation(),
          const SizedBox(height: 20)
        ]
      )
    );
  }

  Row _buildInformation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset('lib/assets/svgs/notice/person.svg'),
        const SizedBox(width: 7),
        const Text('Skeleton', style: TextStyle(fontSize: 12)),
        const SizedBox(width: 20),
        SvgPicture.asset('lib/assets/svgs/notice/clock.svg'),
        const SizedBox(width: 7),
        const Text('Skeleton', style: TextStyle(fontSize: 12))
      ]
    );
  }

  Widget _buildBody() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text('Skeleton_Skeleton_Skeleton'),
          SizedBox(height: 10),
          Text('Skeleton_Skeleton_Skeleton_Skeleton'),
          SizedBox(height: 10),
          Text('Skeleton_Skeleton')
      ],
    );
  }
}