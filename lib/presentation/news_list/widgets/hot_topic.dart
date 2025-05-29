import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_portal/api/models/news_api.dart';
import 'package:news_portal/app/router/translations/app_trans.dart';
import 'package:google_fonts/google_fonts.dart'; // 이 줄 추가!

class HotTopic extends StatefulWidget {
  const HotTopic({super.key});

  @override
  State<HotTopic> createState() => _HotTopicState();
}

class _HotTopicState extends State<HotTopic> {
  @override
  Widget build(BuildContext context) {
    NewsApi.getList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppTrans.newsList.hotTopics.tr(),
          style: GoogleFonts.jua(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 250,
          child: CarouselView.weighted(
            flexWeights: [1, 7, 1],
            children: List.generate(5, (i) {
              return ColoredBox(
                color: Color(
                  (Random().nextDouble() * 0xFFFFFF).toInt(),
                ).withValues(alpha: 1),
              );
            }),
          ),
        ),
      ],
    );
  }
}
