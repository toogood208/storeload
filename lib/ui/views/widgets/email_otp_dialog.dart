import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class EmailDialog extends StatelessWidget {
  const EmailDialog({super.key, required this.request, required this.completer});
  final DialogRequest request;
  final Function(DialogResponse) completer;
  @override
  Widget build(BuildContext context) {
    return const Card();
  }
}