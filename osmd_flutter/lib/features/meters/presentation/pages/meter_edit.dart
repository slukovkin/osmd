import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:osmd_flutter/generated/l10n.dart';

import '../widgets/custom_text_form_field.dart';


@RoutePage()
class MeterEdit extends StatefulWidget {
  const MeterEdit({super.key, required this.title});

  final String title;

  @override
  State<MeterEdit> createState() => _MeterEditState();
}

class _MeterEditState extends State<MeterEdit> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final st = S.of(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Electric meter'),
        ),
        body: Center(
            child: Form(
                child: Column(
          children: [
            Text(widget.title),
            CustomTextFormField(),
            CustomTextFormField(),
            ElevatedButton(onPressed: () {}, child: Text('Save'))
          ],
        ))));
  }
}
