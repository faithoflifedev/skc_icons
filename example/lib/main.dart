import 'package:flutter/material.dart';
import 'package:skc_icons/skc_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

Future<void> launchExternal(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54, // shadow color
                        blurRadius: 5, // shadow radius
                        offset: Offset(5, 5), // shadow offset
                        spreadRadius:
                            0.1, // The amount the box should be inflated prior to applying the blur
                        blurStyle: BlurStyle.normal, // set blur style
                      ),
                    ],
                  ),
                  // color: Colors.indigo.shade50,
                  child: Column(
                    children: [
                      Text('Material Icons', style: TextStyle(fontSize: 20)),
                      // Text(' - ', style: TextStyle(fontSize: 20)),
                      GestureDetector(
                        onTap: () async {
                          await launchExternal(IconType.mat.url);
                        },
                        child: Text(
                          IconType.mat.url,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),

              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 4.0,
                children:
                    SkcIcons.materialIcons
                        .map((e) => IconBox(iconType: e))
                        .toList(),
              ),

              // Divider(height: 20, thickness: 2, color: Colors.blue.shade100),

              // SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54, // shadow color
                        blurRadius: 5, // shadow radius
                        offset: Offset(5, 5), // shadow offset
                        spreadRadius:
                            0.1, // The amount the box should be inflated prior to applying the blur
                        blurStyle: BlurStyle.normal, // set blur style
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8.0),
                  // color: Colors.indigo.shade50,
                  child: Column(
                    children: [
                      Text('FontAwesome Icons', style: TextStyle(fontSize: 20)),
                      // Text(' - ', style: TextStyle(fontSize: 20)),
                      GestureDetector(
                        onTap: () async {
                          await launchExternal(IconType.fai.url);
                        },
                        child: Text(
                          IconType.fai.url,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),

              // Divider(height: 20, thickness: 2, color: Colors.blue.shade100),
              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 8.0,
                runSpacing: 4.0,
                children:
                    SkcIcons.fontAwesomeIcons
                        .map((e) => IconBox(iconType: e))
                        .toList(),
              ),

              // Divider(height: 20, thickness: 2, color: Colors.blue.shade100),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54, // shadow color
                        blurRadius: 5, // shadow radius
                        offset: Offset(5, 5), // shadow offset
                        spreadRadius:
                            0.1, // The amount the box should be inflated prior to applying the blur
                        blurStyle: BlurStyle.normal, // set blur style
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text('Islamic Icons', style: TextStyle(fontSize: 20)),
                      // Text(' - ', style: TextStyle(fontSize: 20)),
                      GestureDetector(
                        onTap: () async {
                          await launchExternal(IconType.fii.url);
                        },
                        child: Text(
                          IconType.fii.url,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      ),
                      // Text(' - ', style: TextStyle(fontSize: 20)),
                      Text(
                        'all available icons are included',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),

              // Divider(height: 20, thickness: 2, color: Colors.blue.shade100),
              SizedBox(height: 12),

              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 8.0,
                runSpacing: 4.0,
                children:
                    SkcIcons.flutterIslamicIcons
                        .map((e) => IconBox(iconType: e))
                        .toList(),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class IconBox extends StatelessWidget {
  final SkcIconType iconType;

  const IconBox({super.key, required this.iconType});

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 175,
    height: 110,
    // padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        Container(
          color: Colors.blue.shade50,
          child: SizedBox(
            width: 165,
            height: 60,
            child: Icon(iconType.icon, size: 40),
          ),
        ),
        SizedBox(height: 4),
        SizedBox(
          width: 165,
          child: Container(
            // margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(8.0),
            color: Colors.blue.shade100,
            child: Text(iconType.name, textAlign: TextAlign.center),
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}
