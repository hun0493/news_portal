import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:news_portal/widgets/app_logo.dart';

class NewsListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewsListAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Applogo(),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(LucideIcons.search)),
        IconButton(onPressed: () {}, icon: Icon(LucideIcons.menu)),
      ],
    );
  }

  @override
  Size get PreferredSize => Size.fromHeight(kToolbarHeight);
}
