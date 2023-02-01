import '../components/getevent_widget.dart';
import '../components/menu_widget.dart';
import '../components/postevent_widget.dart';
import '../components/side_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GetEventWidget extends StatefulWidget {
  const GetEventWidget({Key? key}) : super(key: key);

  @override
  _GetEventWidgetState createState() => _GetEventWidgetState();
}

class _GetEventWidgetState extends State<GetEventWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: SideBarWidget(),
                      ),
                      Expanded(
                        flex: 3,
                        child: MenuWidget(
                          updateSelection: () async {},
                        ),
                      ),
                      if ((FFAppState().sideSelection == 0) &&
                          (FFAppState().selection == 0))
                        Expanded(
                          flex: 10,
                          child: GeteventWidget(),
                        ),
                      if ((FFAppState().sideSelection == 0) &&
                          (FFAppState().selection == 1))
                        Expanded(
                          flex: 10,
                          child: PosteventWidget(),
                        ),
                    ],
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
