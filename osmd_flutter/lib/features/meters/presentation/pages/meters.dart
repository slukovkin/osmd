import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class Meters extends StatelessWidget {
  const Meters({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final st = S.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Text(st.counters,
                style:
                    TextStyle(color: theme.primaryColor, fontSize: fontSize24)),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          AutoRouter.of(context)
                              .replace(MeterEdit(title: 'Electric meter'));
                        },
                        child: Text('Electric meter')),
                    ElevatedButton(
                        onPressed: () {}, child: Text('Water meter')),
                    ElevatedButton(onPressed: () {}, child: Text('Gaz meter')),
                    ElevatedButton(onPressed: () {}, child: Text('History')),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
