import '../components/getorder_widget.dart';
import '../components/menu_widget.dart';
import '../components/side_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GetOrderWidget extends StatefulWidget {
  const GetOrderWidget({Key? key}) : super(key: key);

  @override
  _GetOrderWidgetState createState() => _GetOrderWidgetState();
}

class _GetOrderWidgetState extends State<GetOrderWidget> {
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
                child: GetorderWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
