import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'modelddd_model.dart';
export 'modelddd_model.dart';

class ModeldddWidget extends StatefulWidget {
  const ModeldddWidget({super.key});

  @override
  _ModeldddWidgetState createState() => _ModeldddWidgetState();
}

class _ModeldddWidgetState extends State<ModeldddWidget> {
  late ModeldddModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModeldddModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Html(
            data:
                '<div class="sketchfab-embed-wrapper"> <iframe title="Muscle Study" frameborder="0" allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true" allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking execution-while-out-of-viewport execution-while-not-rendered web-share src="https://sketchfab.com/models/7362e7bea97045af922eb5caa2e6d1e9/embed?autospin=1"> </iframe> <p style="font-size: 13px; font-weight: normal; margin: 5px; color: #4A4A4A;"> <a href="https://sketchfab.com/3d-models/muscle-study-7362e7bea97045af922eb5caa2e6d1e9?utm_medium=embed&utm_campaign=share-popup&utm_content=7362e7bea97045af922eb5caa2e6d1e9" target="_blank" rel="nofollow" style="font-weight: bold; color: #1CAAD9;"> Muscle Study </a> by <a href="https://sketchfab.com/emperial.rat?utm_medium=embed&utm_campaign=share-popup&utm_content=7362e7bea97045af922eb5caa2e6d1e9" target="_blank" rel="nofollow" style="font-weight: bold; color: #1CAAD9;"> emperial.rat </a> on <a href="https://sketchfab.com?utm_medium=embed&utm_campaign=share-popup&utm_content=7362e7bea97045af922eb5caa2e6d1e9" target="_blank" rel="nofollow" style="font-weight: bold; color: #1CAAD9;">Sketchfab</a></p></div>',
            onLinkTap: (url, _, __, ___) => launchURL(url!),
          ),
        ),
      ),
    );
  }
}
