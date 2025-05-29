import 'package:flutter/material.dart';
import 'package:news_portal/presentation/Common/app_logo.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppLogo(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Column(
        children: const [
          // 여기에 뉴스 리스트 위젯 등을 추가
        ],
      ),
    );
  }
}
