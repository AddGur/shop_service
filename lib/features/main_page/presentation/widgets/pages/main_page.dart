import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_service/features/presentation/cubits/navigation_cubit.dart';
import 'package:shop_service/features/presentation/widgets/bottom_navigation_bar.dart';

import '../../../core/theme/cubit/theme_cubit.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({super.key});

  final List<Widget> _pages = [
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => NavigationCubit(),
        child: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text('MockStore'),
                actions: [
                  IconButton(
                      onPressed: () => context.read<ThemeCubit>().toggleTheme(),
                      icon: Icon(Icons.change_circle))
                ],
              ),
              body: _pages[state.currentIndex],
              bottomNavigationBar: CustomNavigationBar(
                  currentIndex: state.currentIndex,
                  onTap: (index) =>
                      context.read<NavigationCubit>().changeTab(index)),
            );
          },
        ));
  }
}
