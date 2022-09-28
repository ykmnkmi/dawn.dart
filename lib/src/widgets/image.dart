import 'dart:html' as html;

import 'package:dawn/core.dart';

import 'painted_widget.dart';

class Image extends PaintedWidget {
  final String source;
  final String? alternativeText;

  final EventListener<html.ErrorEvent>? onError;

  const Image(
    this.source, {
    this.alternativeText,
    this.onError,
    super.style,
    super.animation,
    super.onTap,
    super.onPointerDown,
    super.onPointerUp,
    super.onPointerEnter,
    super.onPointerLeave,
    super.onPointerMove,
    super.onPointerCancel,
    super.onPointerOver,
    super.onPointerOut,
    super.onMouseDown,
    super.onMouseUp,
    super.onMouseEnter,
    super.onMouseLeave,
    super.onMouseMove,
    super.onMouseOver,
    super.onMouseOut,
    super.onTouchStart,
    super.onTouchEnd,
    super.onTouchMove,
    super.onTouchCancel,
    super.key,
  });

  @override
  ImageNode createNode() => ImageNode(this);
}

class ImageNode extends NoChildPaintedNode<Image, html.ImageElement> {
  ImageNode(super.widget) : super(element: html.ImageElement());

  @override
  void initializeElement() {
    super.initializeElement();

    element
      ..addTypedEventListener('error', widget.onError)
      ..src = widget.source
      ..alt = widget.alternativeText ?? '';
  }

  @override
  void disposeElement() {
    element.removeTypedEventListener('error', widget.onError);
    super.disposeElement();
  }
}
