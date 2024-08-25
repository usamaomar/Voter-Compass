import 'package:flutter/material.dart';
import '../app_state.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/internationalization.dart';

class CusomAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CusomAppBar();
  }
}

class _CusomAppBar extends State<CusomAppBar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (FFLocalizations.of(context).languageCode == 'ar') {
          FFAppState().selectedLanguge = 'en';
          setAppLanguage(context, 'en');
        } else {
          FFAppState().selectedLanguge = 'ar';
          setAppLanguage(context, 'ar');
        }
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
        child: Text(
            FFLocalizations.of(context).languageCode == 'ar' ? 'EN' : 'AR',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: const Color(0x00FFFFFFFF),
                fontSize: 15.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }

  void setLocale(String language) {
    setState(() => createLocale(language));
  }
}
