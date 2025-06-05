import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:news_portal/api/models/news_api.dart';
import 'package:news_portal/api/models/news_data.dart';
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
          child: FutureBuilder(
          
            future: NewsApi.getTopic(), 
            builder: (_, snapshot) {
              if(snapshot.connectionState = ConnectionState.
              waiting){
                return Center(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(false),
                  ), 
                );
              }

              final topicNews = snapshot.data?? <NewsData>[];
              if (topicNews.isEmpty){
                return Center(
                  child: Text
                  AppTrans.newsList.noData.tr(),
                  ),
                   );
              }

              return CarouselView.weighted(
                flexWeights: [1,6,1],
                children : List.generate(topicNews.length,(i){
                  final topic = topicNews[i];

                  return Card();
                  child : Stack(
                    children: [
                    Positioned.fill(
                      child:Image.network(                   Image.network(
                      topic.imageUrl!,
                      fit : BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                       return Center(
                        child: Icon(applyTextScaling: LucideIcons.imageOff,size: 25),
                       );
                     },
                     return Card()
                     child: Stack(
                     children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                      
                        decoration: LinearGradient(
                          Gradient:LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors:[Colorss.black,colors.transparent],.
                          )
                        ),
                      ),
                      Positioned(
                        left: 10px,
                        right: 10,
                      
                        bottom: 0,
                        child: Text(
                          topic.title,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                     ],  
                     )
                     ),
                    ],
                  );
                  );
                  ),
                  )
                }
                );
              )
            } ,
            )
        ),
      ],
    );
  }
}
