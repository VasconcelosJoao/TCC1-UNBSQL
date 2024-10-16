import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.black, // Cor do texto principal
      onPrimary: Colors.white, // Cor do conteúdo sobre elementos primários
      surface: Colors.white, // Cor de fundo branca
      onSurface: Colors.black, // Cor de texto sobre o fundo branco
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
        color: Colors.black, // Texto preto no modo claro
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black), // Ícones pretos
  );

  static final _darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.white, // Cor do texto principal no modo escuro
      onPrimary: Colors.black, // Cor sobre os elementos primários
      surface: Colors.black, // Cor de fundo preta
      onSurface: Colors.white, // Cor de texto sobre o fundo preto
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Texto branco no modo escuro
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.white), // Ícones brancos
  );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}
