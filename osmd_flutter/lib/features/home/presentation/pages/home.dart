import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:osmd_flutter/core/router/router.gr.dart';

import '../../../../generated/l10n.dart';

@RoutePage()
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final st = S.of(context);
    return AutoTabsRouter(
      duration: Duration(microseconds: 300),
      routes: [News(), Meters(), Info(), Settings()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _selectTab(index, tabsRouter),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper), label: st.news),
              BottomNavigationBarItem(
                  icon: Icon(Icons.electric_meter_rounded), label: st.counters),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: st.info),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: st.settings),
            ],
          ),
        );
      },
    );
  }

  void _selectTab(int index, TabsRouter tabsRouter) =>
      tabsRouter.setActiveIndex(index);
}
