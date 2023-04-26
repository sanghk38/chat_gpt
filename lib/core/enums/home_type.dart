import 'package:chat_gpt/core/resuource/app_images.dart';
import 'package:easy_localization/easy_localization.dart';

import '../translations/locale_keys.g.dart';

enum HomePageType { home, library, discover, profile }

extension HomePageTypeExtension on HomePageType {
  String get title {
    switch (this) {
      case HomePageType.home:
        return LocaleKeys.home_home.tr();
      case HomePageType.library:
        return LocaleKeys.home_library.tr();
      case HomePageType.discover:
        return LocaleKeys.home_discover.tr();
      case HomePageType.profile:
        return LocaleKeys.home_profile.tr();
    }
  }
  String get selectedIcon {
    switch (this) {
      case HomePageType.home:
        return AppImages.home;
      case HomePageType.library:
        return AppImages.library;
      case HomePageType.discover:
        return AppImages.discover;
      case HomePageType.profile:
        return AppImages.profile;
    }
  }
  String get unselectedIcon {
    switch (this) {
      case HomePageType.home:
        return AppImages.home_unselected;
      case HomePageType.library:
        return AppImages.library_unselected;
      case HomePageType.discover:
        return AppImages.discover_unselected;
      case HomePageType.profile:
        return AppImages.profile_unselected;
    }
  }
}
