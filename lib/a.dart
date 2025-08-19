import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_floating_button.dart';
import 'package:flutter_application_1/custom_svg_bar_item.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selectedIndex = 0;
  final List<String> _label = [
    'Trang chủ',
    'Tìm kiếm',
    'Đăng bài',
    'Bài viết',
    'Tài khoản',
  ];
  static final List<Widget> _widgetOptions = <Widget>[
    Text('Trang chủ'),
    Text('Tìm kiếm'),
    Text('Đăng bài'),
    Text('Bài viết'),
    Text('Tài khoản'),
  ];
  PageController pageController = PageController();
  void _onItemTapped(int index) {
    _selectedIndex = index;
    pageController.jumpToPage(_selectedIndex); //TODO:fix lỗi dispose
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        // landscapeLayout: BottomNavigationBarLandscape  Layout.linear,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: CustomSvgBarItem(
              assetName: "SvgPath.house_icon",
              selected: _selectedIndex == _label.indexOf('Trang chủ'),
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgBarItem(
              assetName: "SvgPath.search_icon",
              selected: _selectedIndex == _label.indexOf('Tìm kiếm'),
            ),
            label: 'Tìm kiếm',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(height: 22),
            label: 'Đăng bài',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgBarItem(
              assetName: "SvgPath.post_icon",
              selected: _selectedIndex == _label.indexOf('Bài viết'),
            ),
            label: 'Bài viết',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgBarItem(
              assetName: "SvgPath.user_icon",
              selected: _selectedIndex == _label.indexOf('Tài khoản'),
            ),
            label: 'Tài khoản',
          ),
        ],
        // selectedLabelStyle: HomeBottomBarStyle.selectedLabel,
        backgroundColor: Color(0xffF0F0F0),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        // selectedItemColor: HomeBottomBarStyle.red, //for label
        // unselectedItemColor: HomeBottomBarStyle.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
      appBar: AppBar(title: Text('My Widget')),
      body: Center(child: Text('Hello, World!')),
    );
  }
}
