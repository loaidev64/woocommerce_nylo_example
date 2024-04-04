import 'package:flutter_app/resources/pages/main_page.dart';
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
        //TODO:: make the actual login here
        updateState(ButtonWidget.state, data: false);
        routeTo(MainPage.path);
      },
      onFailure: (exception) {
        updateState(ButtonWidget.state, data: false);
      },
    );
  }
}
