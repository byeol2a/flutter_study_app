import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_app/components/app_colors.dart';
import 'package:ios_app/pages/add/add_page.dart';
import 'package:ios_app/pages/history/history_page.dart';
import 'package:ios_app/pages/today/today_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _pages = [
    const TodayPage(),
    const HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, //Container < SafeArea 안에 감싼뒤 컬러 주면 위아래 색 맞출 수 있다.
      child: SafeArea(
        top: false, // 윗부분은 합칠필요가 없어 safearea부분 날리기
        child: Scaffold(
          appBar: AppBar(),
          body: _pages[_currentIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: _onAddMedicine,
            child: const Icon(CupertinoIcons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked, // 위치를 중간, 바텀네비랑 섞이게..
          bottomNavigationBar: _buildBottomAppBar(),
        ),
      ),
    );
  }
  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
            elevation: 0, // 맨 바깥과 바텀사이에 있던 라인 제거
            child: Container(
              height: kBottomNavigationBarHeight, //자체적으로 만들어져있는 바텀높이
              color: Colors.white,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround, //자식요소 정렬, 중간 공간들 주기
                children: [
                  // 자식요소로 버튼 2개 생성
                  CupertinoButton(
                    onPressed: () => _onCurrentPage(0),
                    child: Icon(
                      CupertinoIcons.checkmark,
                      color: _currentIndex == 0
                          ? AppColors.primaryColor
                          : Colors.grey[350],
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () => _onCurrentPage(1),
                    child: Icon(
                      CupertinoIcons.text_badge_checkmark,
                      color: _currentIndex == 1
                          ? AppColors.primaryColor
                          : Colors.grey[350],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
  void _onCurrentPage(int pageIndex) {
    setState(() {
      _currentIndex = pageIndex;
    });
  }
  void _onAddMedicine() {
  Navigator.push(
    context, 
    MaterialPageRoute(builder: (context) => const AddPage()),
    );
  }  
}



