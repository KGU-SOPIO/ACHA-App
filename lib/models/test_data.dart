import 'package:acha/models/index.dart';

final Course testData = Course(
  name: '사고와 표현',
  link: 'https://example.com/course',
  code: 'CRS001',
  professor: '송명진',
  lectureRoom: '301',
  weekActivities: [
    WeekActivities(
      week: 1,
      activities: [
        Activity(
          type: ActivityType.lecture,
          available: true,
          name: '1주차 강의!',
          link: 'https://example.com/video1',
          code: "42642",
          deadline: DateTime.now().add(const Duration(hours: 3)),
        ),
        Activity(
          type: ActivityType.assignment,
          available: true,
          name: '1주차 과제!',
          deadline: DateTime.now().add(const Duration(hours: 5)),
        ),
        Activity(
          type: ActivityType.lecture,
          available: true,
          name: '1주차 추가 강의!',
        ),
      ],
    ),
    WeekActivities(
      week: 2,
      activities: [
        Activity(
          type: ActivityType.lecture,
          available: true,
          name: '2주차 강의!',
          link: 'https://example.com/video2',
          deadline: DateTime.now().add(const Duration(days: 5)),
        ),
        Activity(
          type: ActivityType.assignment,
          available: true,
          name: '2주차 과제!',
          deadline: DateTime.now().add(const Duration(days: 5)),
        ),
        Activity(
          type: ActivityType.url, // 'survey' 대신 'url' 사용
          available: true,
          name: '2주차 설문!',
          link: 'https://example.com/survey2',
          deadline: DateTime.now().add(const Duration(days: 5)),
        ),
      ],
    ),
    WeekActivities(
      week: 3,
      activities: [
        Activity(
          type: ActivityType.lecture,
          available: true,
          name: '3주차 강의!',
          link: 'https://example.com/video3',
          deadline: DateTime.now().add(const Duration(days: 5)),
        ),
        Activity(
          type: ActivityType.assignment,
          available: true,
          name: '3주차 과제!',
          deadline: DateTime.now().add(const Duration(days: 7)),
        ),
        Activity(
          type: ActivityType.file,
          available: true,
          name: '3주차 자료!',
          link: 'https://example.com/file3',
          deadline: DateTime.now().add(const Duration(days: 5)),
        ),
      ],
    ),
  ],
  notices: [
    Notice(
      index: '1',
      title: '첫 번째 공지',
      date: DateTime.now(),
      link: 'https://example.com/notice1',
      content: '첫 번째 공지사항 내용입니다.',
      files: [
        File(
          name: '공지사항 파일1',
          link: 'https://example.com/file1',
        ),
      ],
    ),
    Notice(
      index: '2',
      title: '두 번째 공지',
      date: DateTime.now().add(Duration(days: 1)),
      link: 'https://example.com/notice2',
      content: '두 번째 공지사항 내용입니다.',
      files: [
        File(
          name: '공지사항 파일2',
          link: 'https://example.com/file2',
        ),
      ],
    ),
  ],
);