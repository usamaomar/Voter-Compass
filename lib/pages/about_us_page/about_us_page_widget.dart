import '../cusom_app_bar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'about_us_page_model.dart';
export 'about_us_page_model.dart';

class AboutUsPageWidget extends StatefulWidget {
  const AboutUsPageWidget({super.key});

  @override
  State<AboutUsPageWidget> createState() => _ThankPageWidgetState();
}

class _ThankPageWidgetState extends State<AboutUsPageWidget> {
  late AboutUsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutUsPageModel());

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
          leading: CusomAppBar(),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFF2EAE9),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getVariableText(
                                          enText: 'About Us',
                                          arText: 'معلومات عن البوصلة'),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0x00FF474646),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsetsDirectional.fromSTEB(
                          //       20.0, 0.0, 20.0, 0.0),
                          //   child: Row(
                          //     mainAxisSize: MainAxisSize.max,
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Image.asset(
                          //         'assets/images/maskgroup.png',
                          //         width: MediaQuery.of(context).size.width/2,
                          //         height: 250,
                          //         fit: BoxFit.cover,
                          //       )
                          //     ],
                          //   ),
                          // ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                                enText: 'Voter Compass, also known as the Political Compass, is an engaging platform designed to help individuals understand their political leanings and enhance their political awareness. Through a series of quizzes, users can discover their positions on the political spectrum and find political parties that align with their views.The Jordan Political Compass is a specialized version tailored to the unique political landscape of Jordan. It helps users explore their political preferences within the Jordanian context, covering aspects such as governance, economic policies, and social issues. By participating in these quizzes, users can see where they fit on the Jordanian political spectrum and identify which political parties best match their beliefs. Whether you\'re just beginning to explore your political beliefs or seeking a deeper understanding, the Voter Compass and Jordan Political Compass provide valuable insights to help you navigate the political landscape.',
                                                arText: 'بوصلة الناخب، والمعروفة أيضًا باسم البوصلة السياسية، هي منصة تفاعلية تهدف إلى مساعدة الأفراد على فهم ميولهم السياسية وتعزيز وعيهم السياسي. من خلال سلسلة من الاختبارات، يمكن للمستخدمين اكتشاف مواقفهم على الطيف السياسي والعثور على الأحزاب السياسية التي تتوافق مع آرائهمبوصلة الأردن السياسية هي نسخة متخصصة تتناسب مع المشهد السياسي الفريد في الأردن. تساعد هذه الأداة المستخدمين على استكشاف تفضيلاتهم السياسية في السياق الأردني، بما في ذلك جوانب مثل الحوكمة والسياسات الاقتصادية والقضايا الاجتماعية. من خلال المشاركة في هذه الاختبارات، يمكن للمستخدمين معرفة موقعهم على الطيف السياسي الأردني وتحديد الأحزاب السياسية التي تتوافق مع معتقداتهم. سواء كنت تبدأ في استكشاف معتقداتك السياسية أو تبحث عن فهم أعمق، توفر بوصلة الناخب وبوصلة الأردن السياسية رؤى قيمة لمساعدتك على التنقل في المشهد السياسي'),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                          color: Color(0x00FF474646),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
