import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,
    required this.onSaved,
    this.controller,
    this.isPassword = false,
  });

  static String state = "text_form_field";

  final void Function(String?) onSaved;

  final TextEditingController? controller;

  final bool isPassword;

  @override
  createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends NyState<TextFormFieldWidget> {
  _TextFormFieldWidgetState() {
    stateName = TextFormFieldWidget.state;
  }

  late bool _isPassword = widget.isPassword;

  @override
  init() async {}

  @override
  stateUpdated(dynamic data) async {
    // e.g. to update this state from another class
    // updateState(TextFormField.state, data: "example payload");
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefix: !_isPassword
            ? null
            : GestureDetector(
                onTap: () {
                  setState(() {
                    _isPassword = !_isPassword;
                  });
                },
                child: Icon(
                  //TODO:: change icon
                  _isPassword ? Icons.panorama_fish_eye : Icons.remove_red_eye,
                ),
              ),
      ),
      obscureText: _isPassword,
      onSaved: widget.onSaved,
      controller: widget.controller,
    );
  }
}
