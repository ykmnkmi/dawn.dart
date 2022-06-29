import 'dart:html' as html;

import 'package:dawn/src/nodes.dart';
import 'package:dawn/src/widgets.dart';

class TextBoxNode extends UserInputNode<Textbox, html.TextAreaElement> {
  TextBoxNode(super.widget, {super.parentNode})
      : super(element: html.TextAreaElement());

  @override
  void initializeElement() {
    super.initializeElement();
    element.value = widget.value;
  }
}
