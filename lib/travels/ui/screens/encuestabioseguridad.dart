import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class EncuestaBioseguridad extends StatefulWidget {
  @override
  _EncuestaBioseguridadState createState() => _EncuestaBioseguridadState();
}

class _EncuestaBioseguridadState extends State<EncuestaBioseguridad> {

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(

        url:"https://docs.google.com/forms/d/e/1FAIpQLSe7YsV89PmmgjVbweu4LVRHk7tl7jRGHnbZQmLFX79tB0kdgA/viewform"
    );



  }
}
