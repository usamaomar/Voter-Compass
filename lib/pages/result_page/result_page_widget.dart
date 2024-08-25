import '../home_page/custom_painter.dart';
import '../home_page/dot.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'result_page_model.dart';
export 'result_page_model.dart';

class ResultPageWidget extends StatefulWidget {
  const ResultPageWidget({super.key});

  @override
  State<ResultPageWidget> createState() => _ResultPageWidgetState();
}

class _ResultPageWidgetState extends State<ResultPageWidget> {
  late ResultPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Dot> dots = [
    Dot(x: -0.3, y: 0.6, color: Colors.red),
    Dot(x: 0.5, y: -0.5, color: Colors.yellow),
    // Add more dots as needed
  ];

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 50.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'unvtxnga' /* Voter Advice Application */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: CustomPaint(
                  size: const Size(300, 300), // Size of the canvas
                  painter: AxisPainter(
                      dots: dots,
                      xAxisTopText: "Liberally",
                      xAxisBottomText: "Progressive",
                      yAxisLeftText: "Conservative",
                      yAxisRightText: "Socialist"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
