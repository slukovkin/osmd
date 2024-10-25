import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:osmd_flutter/core/constants/dimensions.dart';
import 'package:osmd_flutter/generated/l10n.dart';

@RoutePage()
class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final st = S.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            centerTitle: true,
            title: Text(st.news,
                style:
                    TextStyle(color: theme.primaryColor, fontSize: fontSize24)),
          ),
        ],
      ),
    );
  }
}
