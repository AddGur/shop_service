import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_service/core/config/app_colors.dart';
import 'package:shop_service/core/theme/app_theme.dart';
import 'package:shop_service/core/theme/cubit/theme_cubit.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = context.read<ThemeCubit>().state == AppThemeEnum.dark;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor:
          isDarkMode ? AppColors.darkBackground : AppColors.lightBackground,
      selectedItemColor:
          isDarkMode ? AppColors.darkPrimary : AppColors.lightPrimary,
      unselectedItemColor:
          isDarkMode ? AppColors.darkText : AppColors.lightText,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Szukaj',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Koszyk',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Ulubione',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
      ],
    );
  }
}
