import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'data_table_admin_model.dart';
export 'data_table_admin_model.dart';

class DataTableAdminWidget extends StatefulWidget {
  const DataTableAdminWidget({
    super.key,
    required this.adminList,
  });

  final List<UserStruct>? adminList;

  @override
  State<DataTableAdminWidget> createState() => _DataTableAdminWidgetState();
}

class _DataTableAdminWidgetState extends State<DataTableAdminWidget> {
  late DataTableAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableAdminModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final admin = widget!.adminList!.toList();

        return FlutterFlowDataTable<UserStruct>(
          controller: _model.paginatedDataTableController,
          data: admin,
          columnsBuilder: (onSortChanged) => [
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'User Id',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Username',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Created At',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Phone number',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Email',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Identify Card',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Role',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
          ],
          dataRowBuilder: (adminItem, adminIndex, selected, onSelectChanged) =>
              DataRow(
            color: MaterialStateProperty.all(
              adminIndex % 2 == 0
                  ? FlutterFlowTheme.of(context).primaryText
                  : FlutterFlowTheme.of(context).primaryText,
            ),
            cells: [
              Text(
                adminItem.id,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                adminItem.username,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                adminItem.createdAt,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                adminItem.phoneNumber,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                adminItem.email,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                adminItem.identifyCard,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                adminItem.role.name,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ].map((c) => DataCell(c)).toList(),
          ),
          paginated: true,
          selectable: false,
          hidePaginator: false,
          showFirstLastButtons: false,
          headingRowHeight: 60.0,
          dataRowHeight: 80.0,
          columnSpacing: 10.0,
          headingRowColor: Color(0xFFF1F7F9),
          borderRadius: BorderRadius.circular(8.0),
          addHorizontalDivider: true,
          addTopAndBottomDivider: true,
          hideDefaultHorizontalDivider: true,
          horizontalDividerColor: FlutterFlowTheme.of(context).secondaryText,
          horizontalDividerThickness: 0.2,
          addVerticalDivider: false,
        );
      },
    );
  }
}
