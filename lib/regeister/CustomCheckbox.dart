import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCheckbox extends FormField<bool> {
  CustomCheckbox(FormFieldValidator<bool>? validator)
      : super(
            initialValue: false,
            validator: validator,
            builder: (State) {
              return CheckboxListTile(
                  title: Text("accept all conditions"),
                  subtitle: State.hasError
                      ? Text("you should cheack bos")
                      : SizedBox(),
                  value: State.value,
                  onChanged: (v) {
                    State.didChange(v);
                  });
            });
}
