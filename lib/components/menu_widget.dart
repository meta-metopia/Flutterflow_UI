import '../components/menu_item_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    Key? key,
    int? selection,
    this.updateSelection,
  })  : this.selection = selection ?? 0,
        super(key: key);

  final int selection;
  final Future<dynamic> Function()? updateSelection;

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
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
            height: 100,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x33000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().selection = 0;
                      });
                    },
                    child: MenuItemWidget(
                      title: () {
                        if (FFAppState().sideSelection == 0) {
                          return 'Get Events';
                        } else if (FFAppState().sideSelection == 1) {
                          return 'Get Types';
                        } else if (FFAppState().sideSelection == 2) {
                          return 'Get Sources';
                        } else {
                          return 'Get Orders';
                        }
                      }(),
                      icon: Icon(
                        Icons.star_rounded,
                      ),
                      isSelected: FFAppState().selection == 0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    FFAppState().update(() {
                      FFAppState().selection = 1;
                    });
                  },
                  child: MenuItemWidget(
                    title: () {
                      if (FFAppState().sideSelection == 0) {
                        return 'Post Event';
                      } else if (FFAppState().sideSelection == 1) {
                        return 'Post Type';
                      } else if (FFAppState().sideSelection == 2) {
                        return 'Post Source';
                      } else {
                        return 'Post Order';
                      }
                    }(),
                    icon: Icon(
                      Icons.star_rounded,
                    ),
                    isSelected: FFAppState().selection == 1,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    FFAppState().update(() {
                      FFAppState().selection = 2;
                    });
                  },
                  child: MenuItemWidget(
                    title: () {
                      if (FFAppState().sideSelection == 0) {
                        return 'Search for Event';
                      } else if (FFAppState().sideSelection == 1) {
                        return 'Search for Type';
                      } else if (FFAppState().sideSelection == 2) {
                        return 'Search for Source';
                      } else {
                        return 'Search for Order';
                      }
                    }(),
                    icon: Icon(
                      Icons.star_rounded,
                    ),
                    isSelected: FFAppState().selection == 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
