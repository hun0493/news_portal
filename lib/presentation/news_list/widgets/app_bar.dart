import 'package:flutter/material.dart';
import 'package:';
import 'package:news_portal/presentation/Common/app_logo.dart';

class NewsListAppBar extends StatusTransitionWidget
    implements PreferredSizeWidget {
  const NewsListAppBar({super.key});
}

@override
Size get preferredSize => Size.fromHeight(kToolbarHeight);

@override
Widget build(BuildContext context) {
  return AppBar(
    title: AppLogo(
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
