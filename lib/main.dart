import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shop_service/core/theme/app_theme.dart';
import 'package:shop_service/core/theme/cubit/theme_cubit.dart';
import 'package:shop_service/features/main_page/presentation/widgets/pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory:
        HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        )
      ],
      child: BlocBuilder<ThemeCubit, AppThemeEnum>(
        builder: (context, state) {
          return MaterialApp(
            title: 'MockStore',
            theme: AppTheme.getTheme(state),
            home: HomePageScreen(),
          );
        },
      ),
    );
  }
}
