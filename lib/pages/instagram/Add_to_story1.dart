import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

// Define FlutterFlowTheme if not already defined
class FlutterFlowTheme {
  static ThemeData of(BuildContext context) {
    // Define your theme here or return a default theme
    return ThemeData();
  }

  static Color get primaryBackground => Colors.white; // Example color
  static Color get secondaryText => Colors.black; // Example color
  static Color get primaryText => Colors.black; // Example color
}

// Define Addtostory1IgModel if not already defined
class Addtostory1IgModel {
  // Add your model implementation here
  // Example:
  // late FocusNode unfocusNode;
  // void dispose() {
  //   unfocusNode.dispose();
  // }
}

class Addtostory1IgWidget extends StatefulWidget {
  const Addtostory1IgWidget({Key? key}) : super(key: key);

  @override
  State<Addtostory1IgWidget> createState() => _Addtostory1IgWidgetState();
}

class _Addtostory1IgWidgetState extends State<Addtostory1IgWidget>
    with TickerProviderStateMixin {
  late Addtostory1IgModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: Duration(milliseconds: 0),
          duration: Duration(milliseconds: 1240),
          begin: Offset(1, 1),
          end: Offset(1.5, 1.5),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = Addtostory1IgModel(); // Instantiate your model here
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Theme.of(context).brightness == Brightness.dark
                        ? 'assets/images/WhatsApp_Image_2024-02-28_at_23.28.03.jpeg'
                        : 'assets/images/WhatsApp_Image_2024-02-28_at_23.28.01.jpeg',
                    width: 443,
                    height: 809,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.8,
                child: Align(
                  alignment: AlignmentDirectional(-2.67, -1.07),
                  child: Lottie.asset(
                    'assets/lottie_animations/Animation_-_1709196170491.json',
                    width: 285,
                    height: 254,
                    fit: BoxFit.fitWidth,
                    animate: true,
                  ),
                ),
              ),
              Opacity(
                opacity: 0,
                child: Align(
                  alignment: AlignmentDirectional(-0.97, -0.79),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.of(context).pushNamed('ADDTOSTORY2_IG');
                    },
                    child: Icon(
                      Icons.settings_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 100,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.83, -0.53),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {},
                  child: Text(
                    'Click here',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22,
                    ),
                  ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
