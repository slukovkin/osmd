import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class MetersHistory extends StatelessWidget {
  const MetersHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final st = S.of(context);
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          centerTitle: true,
          title: Text('Meter history',
              style:
                  TextStyle(color: theme.primaryColor, fontSize: fontSize24)),
        ),
      ]),
    );
  }
}
