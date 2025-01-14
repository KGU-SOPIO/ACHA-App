import 'package:acha/models/index.dart';

final List<Course> dummyData = [
  Course(
    name: '사고와 표현',
    link: 'https://example.com/course1',
    code: 'CRS001',
    professor: '송명진',
    lectureRoom: '301',
    weekActivities: [
      Activities(
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
      // 추가 주차 활동...
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
      // 추가 공지사항...
    ],
  ),
  Course(
    name: '데이터 구조',
    link: 'https://example.com/course2',
    code: 'CRS002',
    professor: '김철수',
    lectureRoom: '402',
    weekActivities: [
      Activities(
        week: 1,
        activities: [
          Activity(
            type: ActivityType.lecture,
            available: true,
            name: '1주차 데이터 구조 소개',
            link: 'https://example.com/ds_video1',
            deadline: DateTime.now().add(const Duration(days: 2)),
          ),
          Activity(
            type: ActivityType.assignment,
            available: true,
            name: '1주차 과제: 리스트 구현',
            deadline: DateTime.now().add(const Duration(days: 3)),
          ),
        ],
      ),
      Activities(
        week: 2,
        activities: [
          Activity(
            type: ActivityType.lecture,
            available: true,
            name: '2주차 스택과 큐',
            link: 'https://example.com/ds_video2',
            deadline: DateTime.now().add(const Duration(days: 9)),
          ),
          Activity(
            type: ActivityType.assignment,
            available: true,
            name: '2주차 과제: 스택 구현',
            deadline: DateTime.now().add(const Duration(days: 10)),
          ),
          Activity(
            type: ActivityType.url,
            available: true,
            name: '2주차 참고 자료',
            link: 'https://example.com/ds_resources2',
          ),
        ],
      ),
    ],
    notices: [
      Notice(
        index: '1',
        title: '데이터 구조 과제 안내',
        date: DateTime.now().subtract(Duration(days: 1)),
        link: 'https://example.com/notice_ds1',
        content: '데이터 구조 과제 제출 방법에 대한 안내입니다.',
        files: [
          File(
            name: '과제 설명서',
            link: 'https://example.com/ds_assignment1',
          ),
        ],
      ),
      Notice(
        index: '2',
        title: '중간고사 일정 변경',
        date: DateTime.now().add(Duration(days: 2)),
        link: 'https://example.com/notice_ds2',
        content: '중간고사 일정이 변경되었습니다. 새로운 일정은 다음과 같습니다.',
        files: [],
      ),
    ],
  ),
  Course(
    name: '운영체제',
    link: 'https://example.com/course3',
    code: 'CRS003',
    professor: '이영희',
    lectureRoom: '503',
    weekActivities: [
      Activities(
        week: 1,
        activities: [
          Activity(
            type: ActivityType.lecture,
            available: true,
            name: '1주차 운영체제 개요',
            link: 'https://example.com/os_video1',
            deadline: DateTime.now().add(const Duration(days: 1)),
          ),
          Activity(
            type: ActivityType.assignment,
            available: true,
            name: '1주차 과제: 프로세스 관리',
            deadline: DateTime.now().add(const Duration(days: 4)),
          ),
        ],
      ),
      Activities(
        week: 2,
        activities: [
          Activity(
            type: ActivityType.lecture,
            available: true,
            name: '2주차 메모리 관리',
            link: 'https://example.com/os_video2',
            deadline: DateTime.now().add(const Duration(days: 8)),
          ),
          Activity(
            type: ActivityType.assignment,
            available: true,
            name: '2주차 과제: 메모리 할당',
            deadline: DateTime.now().add(const Duration(days: 12)),
          ),
          Activity(
            type: ActivityType.file,
            available: true,
            name: '2주차 자료: 메모리 관리 자료',
            link: 'https://example.com/os_file2',
            deadline: DateTime.now().add(const Duration(days: 8)),
          ),
        ],
      ),
    ],
    notices: [
      Notice(
        index: '1',
        title: '운영체제 프로젝트 시작',
        date: DateTime.now(),
        link: 'https://example.com/notice_os1',
        content: '운영체제 프로젝트가 시작되었습니다. 팀을 구성해주세요.',
        files: [
          File(
            name: '프로젝트 가이드',
            link: 'https://example.com/os_project1',
          ),
        ],
      ),
    ],
  ),
  Course(
    name: '웹 개발',
    link: 'https://example.com/course4',
    code: 'CRS004',
    professor: '박지성',
    lectureRoom: '604',
    weekActivities: [
      Activities(
        week: 1,
        activities: [
          Activity(
            type: ActivityType.lecture,
            available: true,
            name: '1주차 HTML 기초',
            link: 'https://example.com/web_video1',
            deadline: DateTime.now().add(const Duration(hours: 6)),
          ),
          Activity(
            type: ActivityType.assignment,
            available: true,
            name: '1주차 과제: 웹 페이지 만들기',
            deadline: DateTime.now().add(const Duration(days: 2)),
          ),
        ],
      ),
      Activities(
        week: 2,
        activities: [
          Activity(
            type: ActivityType.lecture,
            available: true,
            name: '2주차 CSS 기초',
            link: 'https://example.com/web_video2',
            deadline: DateTime.now().add(const Duration(days: 3)),
          ),
          Activity(
            type: ActivityType.assignment,
            available: true,
            name: '2주차 과제: 스타일링 적용',
            deadline: DateTime.now().add(const Duration(days: 5)),
          ),
          Activity(
            type: ActivityType.url,
            available: true,
            name: '2주차 참고 자료',
            link: 'https://example.com/web_resources2',
            deadline: DateTime.now().add(const Duration(days: 5)),
          ),
        ],
      ),
      Activities(
        week: 3,
        activities: [
          Activity(
            type: ActivityType.lecture,
            available: true,
            name: '3주차 JavaScript 기초',
            link: 'https://example.com/web_video3',
            deadline: DateTime.now().add(const Duration(days: 7)),
          ),
          Activity(
            type: ActivityType.assignment,
            available: true,
            name: '3주차 과제: 인터랙티브 웹 페이지',
            deadline: DateTime.now().add(const Duration(days: 10)),
          ),
        ],
      ),
    ],
    notices: [
      Notice(
        index: '1',
        title: '웹 개발 세미나',
        date: DateTime.now().add(Duration(days: 1)),
        link: 'https://example.com/notice_web1',
        content: '웹 개발 관련 세미나가 개최됩니다. 참여를 원하시면 링크를 클릭해주세요.',
        files: [
          File(
            name: '세미나 자료',
            link: 'https://example.com/web_seminar1',
          ),
        ],
      ),
      Notice(
        index: '2',
        title: '중간고사 안내',
        date: DateTime.now().add(Duration(days: 4)),
        link: 'https://example.com/notice_web2',
        content: '중간고사 일정이 확정되었습니다. 시험 범위는 강의 1~3주차 내용입니다.',
        files: [],
      ),
    ],
  ),
];