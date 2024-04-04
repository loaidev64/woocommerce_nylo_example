import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '/bootstrap/app.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'bootstrap/boot.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Nylo nylo = await Nylo.init(setup: Boot.nylo, setupFinished: Boot.finished);

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => AppBuild(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        navigatorKey: NyNavigator.instance.router.navigatorKey,
        onGenerateRoute: nylo.router!.generator(),
        debugShowCheckedModeBanner: false,
        initialRoute: nylo.getInitialRoute(),
        navigatorObservers: nylo.getNavigatorObservers(),
      ),
    ),
  );
}
