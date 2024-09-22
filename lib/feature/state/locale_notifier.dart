import 'package:templete_application/gen/strings.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'locale_notifier.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  @override
  AppLocale build() {
    return LocaleSettings.currentLocale;
  }

   void changeLocale() {
    const locales = AppLocale.values;
    final currentIndex = locales.indexOf(state);
    final nextIndex = (currentIndex + 1) % locales.length;
    final newLocale = locales[nextIndex];
    
    state = newLocale;
    LocaleSettings.setLocale(newLocale);
  }
}