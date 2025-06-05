import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_portal/app/router/translations/app_trans.dart';

class LastestNews extends StatelessWidget {
  const LastestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AppTrans.newsList.latestNews.tr(),
          style: GoogleFonts.jua(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],

    );
  

  return GridView.builder(
    itemCount: lastestNews.length,
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,44444444444444444444
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 1 /1.5),

  )
  itemBuilder: (context, index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Expanded(child: Image.network(src))],

    );
  },
  };
}
