import 'app_colors.dart';
import 'app_text_style.dart';

export 'app_text.dart';

class AppTheme {
  static final instance = AppTheme();

  final _colors = AppColors();
  static IAppColors get colors => instance._colors;

  final _textStyles = AppTextStyles();
  static IAppTextStyles get textStyles => instance._textStyles;
}
