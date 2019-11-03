import '../pages/animated_container.dart';
import '../pages/inputs_page.dart';
import 'package:flutter/material.dart';

import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/card_page.dart';
import '../pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (_) => HomePage(),
    'alert': (_) => AlertPage(),
    'avatar': (_) => AvatarPage(),
    'card': (_) => CardPage(),
    'animatedContainer': (_) => AnimatedContainerPage(),
    'inputs': (_) => InputPage(),
  };
}
