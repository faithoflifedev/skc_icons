import 'package:skc_icons/src/extra.dart';

class SkcIcons {
  static final fontAwesomeIcons =
      SkcIconType.values
          .where((element) => element.type == IconType.fai)
          .toList()
        ..sort((a, b) => a.name.compareTo(b.name));

  static final flutterIslamicIcons =
      SkcIconType.values
          .where((element) => element.type == IconType.fii)
          .toList()
        ..sort((a, b) => a.name.compareTo(b.name));

  static final materialIcons =
      SkcIconType.values
          .where((element) => element.type == IconType.mat)
          .toList()
        ..sort((a, b) => a.name.compareTo(b.name));
}
