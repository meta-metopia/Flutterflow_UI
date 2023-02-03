import '../backend/api_requests/api_calls.dart';
import '../components/eventdetail_widget.dart';
import '../components/menu_widget.dart';
import '../components/side_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailEventWidget extends StatefulWidget {
  const DetailEventWidget({
    Key? key,
    this.passId,
  }) : super(key: key);

  final String? passId;

  @override
  _DetailEventWidgetState createState() => _DetailEventWidgetState();
}

class _DetailEventWidgetState extends State<DetailEventWidget> {
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
                child: FutureBuilder<ApiCallResponse>(
                  future: EventGroup.geteventbyidCall.call(
                    id: widget.passId,
                    accessToken: FFAppState().token,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    final eventdetailGeteventbyidResponse = snapshot.data!;
                    return EventdetailWidget(
                      checkId: widget.passId,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
