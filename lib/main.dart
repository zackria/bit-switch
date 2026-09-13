import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';
import 'l10n/l10n.dart';
import 'providers/device_provider.dart';
import 'providers/settings_provider.dart';
import 'ui/screens/home_screen.dart';

void main() {
  // Catch errors in the Flutter framework (widget build errors, etc.)
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kDebugMode) {
      debugPrint('[FlutterError] ${details.exceptionAsString()}');
    }
  };

  // Catch unhandled async errors (platform-level)
  PlatformDispatcher.instance.onError = (error, stack) {
    if (kDebugMode) {
      debugPrint('[UnhandledError] $error');
      debugPrint('$stack');
    }
    return true; // Prevent app crash
  };

  runApp(const WemoControlApp());
}

class WemoControlApp extends StatelessWidget {
  const WemoControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DeviceProvider()),
        ChangeNotifierProvider(create: (_) => SettingsProvider()),
      ],
      child: MaterialApp(
        onGenerateTitle: (context) => context.l10n.appTitle,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) {
          updateCurrentLocale(Localizations.localeOf(context));
          return child ?? const SizedBox.shrink();
        },
        theme: _buildLightTheme(),
        darkTheme: _buildDarkTheme(),
        themeMode: ThemeMode.system,
        home: const HomeScreen(),
      ),
    );
  }

  ThemeData _buildLightTheme() {
    return _buildTheme(
      Brightness.light,
      _ThemePalette(
        primaryColor: const Color(0xFF4CAF50),
        secondaryColor: const Color(0xFF2196F3),
        surface: Colors.white,
        surfaceContainerHighest: Colors.grey[100]!,
        appBarBackground: const Color(0xFF4CAF50),
        cardElevation: 2,
        cardColor: null,
        inactiveTrackColor: Colors.grey[300],
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    return _buildTheme(
      Brightness.dark,
      _ThemePalette(
        primaryColor: const Color(0xFF66BB6A),
        secondaryColor: const Color(0xFF42A5F5),
        surface: const Color(0xFF1E1E1E),
        surfaceContainerHighest: const Color(0xFF2D2D2D),
        appBarBackground: const Color(0xFF2D2D2D),
        cardElevation: 4,
        cardColor: const Color(0xFF2D2D2D),
        inactiveTrackColor: Colors.grey[700],
      ),
    );
  }

  ThemeData _buildTheme(Brightness brightness, _ThemePalette palette) {
    final primaryColor = palette.primaryColor;
    final secondaryColor = palette.secondaryColor;
    final surface = palette.surface;
    final surfaceContainerHighest = palette.surfaceContainerHighest;
    final appBarBackground = palette.appBarBackground;
    final cardElevation = palette.cardElevation;
    final cardColor = palette.cardColor;
    final inactiveTrackColor = palette.inactiveTrackColor;

    final colorScheme = brightness == Brightness.light
        ? ColorScheme.light(
            primary: primaryColor,
            secondary: secondaryColor,
            surface: surface,
            surfaceContainerHighest: surfaceContainerHighest,
            primaryContainer: primaryColor.withValues(alpha: 0.1),
            onPrimaryContainer: primaryColor,
          )
        : ColorScheme.dark(
            primary: primaryColor,
            secondary: secondaryColor,
            surface: surface,
            surfaceContainerHighest: surfaceContainerHighest,
            primaryContainer: primaryColor.withValues(alpha: 0.2),
            onPrimaryContainer: primaryColor,
          );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: appBarBackground,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      cardTheme: CardThemeData(
        elevation: cardElevation,
        color: cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor;
          }
          return Colors.grey;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryColor.withValues(alpha: 0.5);
          }
          return inactiveTrackColor;
        }),
      ),
    );
  }
}

class _ThemePalette {
  const _ThemePalette({
    required this.primaryColor,
    required this.secondaryColor,
    required this.surface,
    required this.surfaceContainerHighest,
    required this.appBarBackground,
    required this.cardElevation,
    required this.cardColor,
    required this.inactiveTrackColor,
  });

  final Color primaryColor;
  final Color secondaryColor;
  final Color surface;
  final Color surfaceContainerHighest;
  final Color appBarBackground;
  final double cardElevation;
  final Color? cardColor;
  final Color? inactiveTrackColor;
}
