import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dialog_add_staff_widget.dart' show DialogAddStaffWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DialogAddStaffModel extends FlutterFlowModel<DialogAddStaffWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  String? _usernameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required!';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required!';
    }

    return null;
  }

  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode;
  TextEditingController? phonenumberTextController;
  String? Function(BuildContext, String?)? phonenumberTextControllerValidator;
  String? _phonenumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone number is required!';
    }

    return null;
  }

  // State field(s) for identifycard widget.
  FocusNode? identifycardFocusNode;
  TextEditingController? identifycardTextController;
  String? Function(BuildContext, String?)? identifycardTextControllerValidator;
  String? _identifycardTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Identifycard is required';
    }

    if (val.length < 12) {
      return 'Must be of length 12!';
    }
    if (val.length > 12) {
      return 'Must be of length 12!';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (adminCreateStaff API)] action in Button widget.
  ApiCallResponse? createOutput;

  @override
  void initState(BuildContext context) {
    usernameTextControllerValidator = _usernameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    phonenumberTextControllerValidator = _phonenumberTextControllerValidator;
    identifycardTextControllerValidator = _identifycardTextControllerValidator;
  }

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phonenumberFocusNode?.dispose();
    phonenumberTextController?.dispose();

    identifycardFocusNode?.dispose();
    identifycardTextController?.dispose();
  }
}
