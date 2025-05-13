import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum SkcIconType {
  bookQuran('bookQuran', IconType.fai, FontAwesomeIcons.bookQuran),
  calculator('calculator', IconType.fai, FontAwesomeIcons.calculator),
  solidCalendarDays(
    'solidCalendarDays',
    IconType.fai,
    FontAwesomeIcons.solidCalendarDays,
  ),
  circleDollarToSlot(
    'circleDollarToSlot',
    IconType.fai,
    FontAwesomeIcons.circleDollarToSlot,
  ),
  circleQuestion(
    'circleQuestion',
    IconType.fai,
    FontAwesomeIcons.circleQuestion,
  ),
  envelope('envelope', IconType.fai, FontAwesomeIcons.envelope),
  envelopesBulk('envelopesBulk', IconType.fai, FontAwesomeIcons.envelopesBulk),
  envelopeOpenText(
    'envelopeOpenText',
    IconType.fai,
    FontAwesomeIcons.envelopeOpenText,
  ),
  facebook('facebook', IconType.fai, FontAwesomeIcons.facebook),
  handHoldingDollar(
    'handHoldingDollar',
    IconType.fai,
    FontAwesomeIcons.handHoldingDollar,
  ),
  handsPraying('handsPraying', IconType.fai, FontAwesomeIcons.handsPraying),
  house('house', IconType.fai, FontAwesomeIcons.house),
  instagram('instagram', IconType.fai, FontAwesomeIcons.instagram),
  kaaba('kaaba', IconType.fai, FontAwesomeIcons.kaaba),
  locationPin('locationPin', IconType.fai, FontAwesomeIcons.locationPin),
  menuOutlined('menuOutlined', IconType.mat, Icons.menu_outlined),
  menuRounded('menuOutlined', IconType.mat, Icons.menu_rounded),
  menuSharp('menuOutlined', IconType.mat, Icons.menu_sharp),
  menuOpenOutlined('menuOpenOutlined', IconType.mat, Icons.menu_open_outlined),
  menuOpenRounded('menuOpenRounded', IconType.mat, Icons.menu_open_rounded),
  menuOpenSharp('menuOpenSharp', IconType.mat, Icons.menu_open_sharp),
  questionMark('questionMark', IconType.mat, Icons.question_mark),
  questionMarkOutlined(
    'questionMarkOutlined',
    IconType.mat,
    Icons.question_mark_outlined,
  ),
  questionMarkRounded(
    'questionMarkRounded',
    IconType.mat,
    Icons.question_mark_rounded,
  ),
  questionMarkSharp('n', IconType.mat, Icons.question_mark_sharp),
  mosque('mosque', IconType.fai, FontAwesomeIcons.mosque),
  personPraying('personPraying', IconType.fai, FontAwesomeIcons.personPraying),
  phone('phone', IconType.fai, FontAwesomeIcons.phone),
  sitemap('sitemap', IconType.fai, FontAwesomeIcons.sitemap),
  soundcloud('soundcloud', IconType.fai, FontAwesomeIcons.soundcloud),
  squareYoutube('squareYoutube', IconType.fai, FontAwesomeIcons.squareYoutube),
  twitter('twitter', IconType.fai, FontAwesomeIcons.twitter),
  upRightFromSquare(
    'upRightFromSquare',
    IconType.fai,
    FontAwesomeIcons.upRightFromSquare,
  ),
  utensils('utensils', IconType.fai, FontAwesomeIcons.utensils),
  youtube('youtube', IconType.fai, FontAwesomeIcons.youtube),

  solidKaaba('solidKaaba', IconType.fii, FlutterIslamicIcons.solidKaaba),
  solidAllah('solidAllah', IconType.fii, FlutterIslamicIcons.solidAllah),
  solidMohammad(
    'solidMohammad',
    IconType.fii,
    FlutterIslamicIcons.solidMohammad,
  ),
  solidMosque('solidMosque', IconType.fii, FlutterIslamicIcons.solidMosque),
  solidPrayer('solidPrayer', IconType.fii, FlutterIslamicIcons.solidPrayer),
  solidSajadah('solidSajadah', IconType.fii, FlutterIslamicIcons.solidSajadah),
  solidDrum('solidDrum', IconType.fii, FlutterIslamicIcons.solidDrum),
  solidCrescentMoon(
    'solidCrescentMoon',
    IconType.fii,
    FlutterIslamicIcons.solidCrescentMoon,
  ),
  solidTasbih2('solidTasbih2', IconType.fii, FlutterIslamicIcons.solidTasbih2),
  solidPrayingPerson(
    'solidPrayingPerson',
    IconType.fii,
    FlutterIslamicIcons.solidPrayingPerson,
  ),
  solidCommunity(
    'solidCommunity',
    IconType.fii,
    FlutterIslamicIcons.solidCommunity,
  ),
  islam('islam', IconType.fii, FlutterIslamicIcons.islam),
  solidLantern('solidLantern', IconType.fii, FlutterIslamicIcons.solidLantern),
  solidKowtow('solidKowtow', IconType.fii, FlutterIslamicIcons.solidKowtow),
  solidQuran('solidQuran', IconType.fii, FlutterIslamicIcons.solidQuran),
  solidCow('solidCow', IconType.fii, FlutterIslamicIcons.solidCow),
  solidAllah99('solidAllah99', IconType.fii, FlutterIslamicIcons.solidAllah99),
  solidDrum2('solidDrum2', IconType.fii, FlutterIslamicIcons.solidDrum2),
  sheep('sheep', IconType.fii, FlutterIslamicIcons.sheep),
  solidFamily('solidFamily', IconType.fii, FlutterIslamicIcons.solidFamily),
  solidIftar('solidIftar', IconType.fii, FlutterIslamicIcons.solidIftar),
  solidHadji('solidHadji', IconType.fii, FlutterIslamicIcons.solidHadji),
  solidLocationMuslim(
    'solidLocationMuslim',
    IconType.fii,
    FlutterIslamicIcons.solidLocationMuslim,
  ),
  solidMinaret('solidMinaret', IconType.fii, FlutterIslamicIcons.solidMinaret),
  filMosque('mosque', IconType.fii, FlutterIslamicIcons.mosque),
  solidMuslimah(
    'solidMuslimah',
    IconType.fii,
    FlutterIslamicIcons.solidMuslimah,
  ),
  solidMuslimah2(
    'solidMuslimah2',
    IconType.fii,
    FlutterIslamicIcons.solidMuslimah2,
  ),
  solidMuslim('solidMuslim', IconType.fii, FlutterIslamicIcons.solidMuslim),
  solidMuslim2('solidMuslim2', IconType.fii, FlutterIslamicIcons.solidMuslim2),
  solidQibla('solidQibla', IconType.fii, FlutterIslamicIcons.solidQibla),
  solidQibla2('solidQibla2', IconType.fii, FlutterIslamicIcons.solidQibla2),
  solidQuran2('solidQuran2', IconType.fii, FlutterIslamicIcons.solidQuran2),
  solidSheep('solidSheep', IconType.fii, FlutterIslamicIcons.solidSheep),
  solidTakbir('solidTakbir', IconType.fii, FlutterIslamicIcons.solidTakbir),
  solidTasbih('solidTasbih', IconType.fii, FlutterIslamicIcons.solidTasbih),
  solidTasbih3('solidTasbih3', IconType.fii, FlutterIslamicIcons.solidTasbih3),
  solidTasbihHand(
    'solidTasbihHand',
    IconType.fii,
    FlutterIslamicIcons.solidTasbihHand,
  ),
  solidTawhid('solidTawhid', IconType.fii, FlutterIslamicIcons.solidTawhid),
  solidWudhu('solidWudhu', IconType.fii, FlutterIslamicIcons.solidWudhu),
  solidZakat('solidZakat', IconType.fii, FlutterIslamicIcons.solidZakat),
  tasbih2('tasbih2', IconType.fii, FlutterIslamicIcons.tasbih2),
  tawhid('tawhid', IconType.fii, FlutterIslamicIcons.tawhid),
  zakat('zakat', IconType.fii, FlutterIslamicIcons.zakat),
  tasbihHand('tasbihHand', IconType.fii, FlutterIslamicIcons.tasbihHand),
  tasbih('tasbih', IconType.fii, FlutterIslamicIcons.tasbih),
  wudhu('wudhu', IconType.fii, FlutterIslamicIcons.wudhu),
  takbir('takbir', IconType.fii, FlutterIslamicIcons.takbir),
  tasbih3('tasbih3', IconType.fii, FlutterIslamicIcons.tasbih3),
  allah99('allah99', IconType.fii, FlutterIslamicIcons.allah99),
  allahText('allahText', IconType.fii, FlutterIslamicIcons.allahText),
  community('community', IconType.fii, FlutterIslamicIcons.community),
  allah('allah', IconType.fii, FlutterIslamicIcons.allah),
  cow('cow', IconType.fii, FlutterIslamicIcons.cow),
  crescentMoon('crescentMoon', IconType.fii, FlutterIslamicIcons.crescentMoon),
  calendar('calendar', IconType.fii, FlutterIslamicIcons.calendar),
  drum2('drum2', IconType.fii, FlutterIslamicIcons.drum2),
  family('family', IconType.fii, FlutterIslamicIcons.family),
  iftar('iftar', IconType.fii, FlutterIslamicIcons.iftar),
  drum('drum', IconType.fii, FlutterIslamicIcons.drum),
  hadji('hadji', IconType.fii, FlutterIslamicIcons.hadji),
  locationMuslim(
    'locationMuslim',
    IconType.fii,
    FlutterIslamicIcons.locationMuslim,
  ),
  locationMosque(
    'locationMosque',
    IconType.fii,
    FlutterIslamicIcons.locationMosque,
  ),
  lantern('lantern', IconType.fii, FlutterIslamicIcons.lantern),
  filKaaba('kaaba', IconType.fii, FlutterIslamicIcons.kaaba),
  muslim('muslim', IconType.fii, FlutterIslamicIcons.muslim),
  muslim2('muslim2', IconType.fii, FlutterIslamicIcons.muslim2),
  muslimah('muslimah', IconType.fii, FlutterIslamicIcons.muslimah),
  kowtow('kowtow', IconType.fii, FlutterIslamicIcons.kowtow),
  mohammad('mohammad', IconType.fii, FlutterIslamicIcons.mohammad),
  muslimah2('muslimah2', IconType.fii, FlutterIslamicIcons.muslimah2),
  prayer('prayer', IconType.fii, FlutterIslamicIcons.prayer),
  prayingPerson(
    'prayingPerson',
    IconType.fii,
    FlutterIslamicIcons.prayingPerson,
  ),
  qibla('qibla', IconType.fii, FlutterIslamicIcons.qibla),
  qibla2('qibla2', IconType.fii, FlutterIslamicIcons.qibla2),
  quran2('quran2', IconType.fii, FlutterIslamicIcons.quran2),
  ramadan('ramadan', IconType.fii, FlutterIslamicIcons.ramadan),
  sajadah('sajadah', IconType.fii, FlutterIslamicIcons.sajadah),
  quran('quran', IconType.fii, FlutterIslamicIcons.quran);

  final String key;
  final IconType type;
  final IconData icon;

  const SkcIconType(this.key, this.type, this.icon);
}

enum IconType {
  fai('fai', 'https://fontawesome.com/icons'),
  fii('fii', 'https://pub.dev/packages/flutter_islamic_icons'),
  mat('mat', 'https://fonts.google.com/icons');

  final String name;

  final String url;

  const IconType(this.name, this.url);
}
