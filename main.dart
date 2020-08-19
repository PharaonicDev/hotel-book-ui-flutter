import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'شرم الشيخ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  ' مدينة سياحية مصرية',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'احجز'),
          _buildButtonColumn(color, Icons.near_me, 'ارسل'),
          _buildButtonColumn(color, Icons.share, 'شارك'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'شرم الشيخ هي مدينة سياحية مصرية، تقع عند ملتقى خليجي العقبة والسويس على ساحل البحر الأحمر. تبلغ مساحتها 480 كم، ويصل عدد سكانها إلى 35 ألف نسمة، وتعد أكبر مدن محافظة جنوب سيناء. '
          'شرم الشيخ هي مدينة سياحية مصرية، تقع عند ملتقى خليجي العقبة والسويس على ساحل البحر الأحمر. تبلغ مساحتها 480 كم، ويصل عدد سكانها إلى 35 ألف نسمة، وتعد أكبر مدن محافظة جنوب سيناء.'
            ,
        softWrap: true,
      ),
    );

    return MaterialApp(
         localizationsDelegates: [
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: [
    Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
  ],
  locale: Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales,
      title: 'مدينه شرم الشيخ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('عروض سياحيه'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/sharm.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}