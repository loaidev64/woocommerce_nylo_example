import 'package:flutter_app/resources/pages/home_page.dart';
import 'package:flutter_app/resources/widgets/button_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '/app/controllers/controller.dart';
import 'package:flutter/widgets.dart';

class LoginController extends Controller {
  String? email;

  String? password;

  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  void login() async {
    updateState(ButtonWidget.state, data: true);
    validate(
      rules: {
        'email': [email, 'required'],
        'password': [password, 'required'],
      },
      onSuccess: () {
        updateState(ButtonWidget.state, data: false);
        //TODO:: make the actual login here
        routeTo(HomePage.path);
      },
      onFailure: (exception) {
        updateState(ButtonWidget.state, data: false);
      },
    );
  }
}
