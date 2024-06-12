import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:revue_application/components/login_component.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: LoginComponent()),
    );
  }
}
