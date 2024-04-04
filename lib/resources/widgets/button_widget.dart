import 'package:flutter/material.dart';
import 'package:flutter_app/resources/widgets/loader_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  static String state = "button_widget";

  final void Function() onPressed;

  final String text;

  @override
  createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends NyState<ButtonWidget> {
  _ButtonWidgetState() {
    stateName = ButtonWidget.state;
  }

  bool _isLoading = false;

  @override
  init() async {}

  @override
  stateUpdated(dynamic data) async {
    if (data is bool) {
      _isLoading = data;
    }
    // e.g. to update this state from another class
    // updateState(ButtonWidget.state, data: "example payload");
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: _isLoading ? Loader() : Text(widget.text),
      onPressed: _isLoading ? null : widget.onPressed,
    );
  }
}
