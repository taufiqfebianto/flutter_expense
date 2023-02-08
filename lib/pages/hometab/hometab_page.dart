import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expense/pages/home/home_page.dart';
import 'package:flutter_expense/pages/statistic/statistic_page.dart';
import 'bloc/hometab.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  HometabBloc? bloc;
  int _selectedTab = 1;

  Widget _activeTab(HometabState state, BuildContext context) {
    if (state == HometabState.statistic) {
      return const StatisticPage();
    }
    if (state == HometabState.home) {
      return const HomePage();
    }

    return const HomePage();
  }

  @override
  void initState() {
    bloc = BlocProvider.of<HometabBloc>(context);
    super.initState();
  }

  // _onExit() {
  //   debugPrint('TAP');
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HometabBloc, HometabState>(
        listener: ((context, state) {}),
        builder: (context, state) {
          return Scaffold(
           
            body: _activeTab(state, context),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedTab,
              onTap: (int value) {
                BlocProvider.of<HometabBloc>(context).add(
                  HometabChoose(
                    tab: HometabState.values[value],
                  ),
                );
                setState(() {
                  _selectedTab = value;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.pie_chart), label: 'Statistic'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.wallet_rounded), label: 'Home'),
              ],
            ),
          );
        });
  }
}
