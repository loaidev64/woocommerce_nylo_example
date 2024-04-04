import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/profile_controller.dart';

class ProfilePage extends NyStatefulWidget<ProfileController> {
  static const path = '/profile';

  ProfilePage({super.key}) : super(path, child: _ProfilePageState());
}

class _ProfilePageState extends NyState<ProfilePage> {

  /// [ProfileController] controller
  ProfileController get controller => widget.controller;

  @override
  init() async {

  }
  
  /// Use boot if you need to load data before the view is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
