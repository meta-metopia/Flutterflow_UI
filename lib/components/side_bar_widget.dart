import '../components/side_bar_item_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({Key? key}) : super(key: key);

  @override
  _SideBarWidgetState createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiaryColor,
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            context.pushNamed('get_event');

            FFAppState().update(() {
              FFAppState().selection = 0;
            });
          },
          child: SideBarItemWidget(
            icon: Icon(
              Icons.airport_shuttle,
            ),
            isSelected: FFAppState().sideSelection == 0,
            title: 'Event',
          ),
        ),
        InkWell(
          onTap: () async {
            context.pushNamed('get_et');

            FFAppState().update(() {
              FFAppState().selection = 0;
              FFAppState().sideSelection = 1;
            });
          },
          child: SideBarItemWidget(
            icon: Icon(
              Icons.threesixty_sharp,
            ),
            isSelected: FFAppState().sideSelection == 1,
            title: 'Event\nType',
          ),
        ),
        InkWell(
          onTap: () async {
            context.pushNamed('get_source');

            FFAppState().update(() {
              FFAppState().selection = 0;
              FFAppState().sideSelection = 2;
            });
          },
          child: SideBarItemWidget(
            icon: Icon(
              Icons.accessibility_rounded,
            ),
            isSelected: false,
            title: 'Source',
          ),
        ),
        InkWell(
          onTap: () async {
            context.pushNamed('get_order');

            FFAppState().update(() {
              FFAppState().selection = 0;
              FFAppState().sideSelection = 3;
            });
          },
          child: SideBarItemWidget(
            icon: Icon(
              Icons.access_alarm,
            ),
            isSelected: false,
            title: 'Order',
          ),
        ),
        SideBarItemWidget(
          icon: Icon(
            Icons.home,
          ),
          isSelected: false,
          title: 'Home',
        ),
      ],
    );
  }
}
