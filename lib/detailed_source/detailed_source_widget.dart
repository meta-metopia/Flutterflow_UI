import '../components/detailed_s_widget.dart';
import '../components/menu_widget.dart';
import '../components/side_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailedSourceWidget extends StatefulWidget {
  const DetailedSourceWidget({
    Key? key,
    this.passId,
  }) : super(key: key);

  final String? passId;

  @override
  _DetailedSourceWidgetState createState() => _DetailedSourceWidgetState();
}

class _DetailedSourceWidgetState extends State<DetailedSourceWidget> {
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
                flex: 1,
                child: SideBarWidget(),
              ),
              Expanded(
                flex: 3,
                child: MenuWidget(
                  updateSelection: () async {},
                ),
              ),
              Expanded(
                flex: 10,
                child: DetailedSWidget(
                  sourceId: widget.passId,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
