import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:shop_service/core/theme/app_theme.dart';

class ThemeCubit extends HydratedCubit<AppThemeEnum> {
  ThemeCubit() : super(AppThemeEnum.light);

  void toggleTheme() {
    if (state == AppThemeEnum.dark) {
      emit(AppThemeEnum.light);
    } else {
      emit(AppThemeEnum.dark);
    }
  }

  @override
  AppThemeEnum? fromJson(Map<String, dynamic> json) {
    return json['theme'] == 'dark' ? AppThemeEnum.dark : AppThemeEnum.light;
  }

  @override
  Map<String, dynamic>? toJson(state) {
    return {'theme': state == AppThemeEnum.dark ? 'dark' : 'light'};
  }
}
