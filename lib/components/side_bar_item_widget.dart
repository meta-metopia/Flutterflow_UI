import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SideBarItemWidget extends StatefulWidget {
  const SideBarItemWidget({
    Key? key,
    this.icon,
    this.isSelected,
    this.title,
  }) : super(key: key);

  final Widget? icon;
  final bool? isSelected;
  final String? title;

  @override
  _SideBarItemWidgetState createState() => _SideBarItemWidgetState();
}

class _SideBarItemWidgetState extends State<SideBarItemWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      onTap: () async {
        context.pushNamed('get_event');
      },
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiaryColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: widget.isSelected!
                    ? FlutterFlowTheme.of(context).alternate
                    : FlutterFlowTheme.of(context).tertiaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: widget.icon!,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 5),
              child: Text(
                widget.title!,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: widget.isSelected!
                          ? FlutterFlowTheme.of(context).alternate
                          : FlutterFlowTheme.of(context).primaryText,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
