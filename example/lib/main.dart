import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skc_icons/skc_icons.dart';
import 'package:url_launcher/url_launcher.dart';

final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => IconScreen(state: state)),
    GoRoute(path: '/list', builder: (context, state) => IconListScreen()),
  ],
);

Future<void> launchExternal(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) =>
      MaterialApp.router(routerConfig: _router);
}

class IconScreen extends StatelessWidget {
  final GoRouterState state;

  const IconScreen({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final queryParams = state.uri.queryParameters;

    final iconName = queryParams['iconName'];

    final selectedIcon = SkcIconType.values.firstWhereOrNull(
      (element) => element.key == iconName,
    );

    // if (selectedIcon != null) {
    //   return Scaffold(
    //     body: SafeArea(
    //       child: Center(
    //         child: Column(
    //           children: [SizedBox(height: 12), IconBox(iconType: selectedIcon)],
    //         ),
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: 12),

              TitleBox(title: 'Material Icons'),

              SizedBox(height: 12),

              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 4.0,
                children:
                    SkcIcons.materialIcons
                        .map(
                          (e) => IconBox(
                            iconType: e,
                            isSelected: selectedIcon?.icon == e.icon,
                          ),
                        )
                        .toList(),
              ),

              // Divider(height: 20, thickness: 2, color: Colors.blue.shade100),
              TitleBox(title: 'FontAwesome Icons'),

              SizedBox(height: 12),

              // Divider(height: 20, thickness: 2, color: Colors.blue.shade100),
              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 8.0,
                runSpacing: 4.0,
                children:
                    SkcIcons.fontAwesomeIcons
                        .map(
                          (e) => IconBox(
                            iconType: e,
                            isSelected: selectedIcon?.icon == e.icon,
                          ),
                        )
                        .toList(),
              ),

              TitleBox(title: 'Islamic Icons'),

              // Divider(height: 20, thickness: 2, color: Colors.blue.shade100),
              SizedBox(height: 12),

              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 8.0,
                runSpacing: 4.0,
                children:
                    SkcIcons.flutterIslamicIcons
                        .map(
                          (e) => IconBox(
                            iconType: e,
                            isSelected: selectedIcon?.icon == e.icon,
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconListScreen extends StatelessWidget {
  const IconListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SelectableText(
              SkcIconType.values.map((e) => e.key).toList().join('\r'),
            ),
          ),
        ),
      ),
    );
  }
}

class TitleBox extends StatelessWidget {
  final String title;

  final String? url;

  const TitleBox({super.key, required this.title, this.url});

  @override
  Widget build(BuildContext context) => Padding(
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
          Text(title, style: TextStyle(fontSize: 20)),

          // Text(' - ', style: TextStyle(fontSize: 20)),
          if (url != null)
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
  );
}

class IconBox extends StatelessWidget {
  final SkcIconType iconType;

  final bool isSelected;

  const IconBox({super.key, required this.iconType, this.isSelected = false});

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(12.0),
    child: Container(
      color: isSelected ? Colors.red : Colors.white,
      child: Card(
        child: Container(
          key: ValueKey(iconType.key),
          margin: const EdgeInsets.only(top: 8.0),
          width: 175,
          height: 110,
          // padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  color: Colors.blue.shade50,
                  child: SizedBox(
                    width: 165,
                    height: 60,
                    child: Icon(iconType.icon, size: 40),
                  ),
                ),
              ),
              SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: SizedBox(
                  width: 165,
                  child: Container(
                    // margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue.shade100,
                    child: Center(
                      child: SelectionArea(
                        child: Text(
                          iconType.name,
                          // textAlign: TextAlign.center
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ),
  );
}
