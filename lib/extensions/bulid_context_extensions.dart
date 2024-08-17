part of 'extensions.dart';

extension BulidContextExtensions on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  NavigatorState get navigator => Navigator.of(this);
}
