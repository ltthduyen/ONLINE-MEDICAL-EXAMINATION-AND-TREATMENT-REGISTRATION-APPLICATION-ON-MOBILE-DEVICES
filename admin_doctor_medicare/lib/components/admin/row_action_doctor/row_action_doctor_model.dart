import '/backend/api_requests/api_calls.dart';
import '/components/admin/dialog_edit_doctor/dialog_edit_doctor_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'row_action_doctor_widget.dart' show RowActionDoctorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RowActionDoctorModel extends FlutterFlowModel<RowActionDoctorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (updatestatus API)] action in Switch widget.
  ApiCallResponse? updateStatusOnOutput;
  // Stores action output result for [Backend Call - API (updatestatus API)] action in Switch widget.
  ApiCallResponse? updateStatusOffOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
