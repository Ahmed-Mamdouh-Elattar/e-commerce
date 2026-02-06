import 'package:e_commerce/core/config/app_theme.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/providers/shared_preferences_provider/shared_preferecne_provider.dart';
import 'package:e_commerce/core/routing/app_router.dart';
import 'package:e_commerce/core/services/notification_service/intialize_app_notification.dart';
import 'package:e_commerce/feature/theme/presentation/providers/theme_switching_provider.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await intializeAppNotification();
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: dotenv.env[subabaseUrl]!,
    anonKey: dotenv.env[subabaseAnonKey]!,
  );
  Stripe.publishableKey = dotenv.env[stripePublishableKey]!;
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const ECommerceApp(),
    ),
  );
}

class ECommerceApp extends ConsumerWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final themeMode = ref.watch(themeSwitchingProvider);
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: ThemeProvider(
            initTheme: themeMode == ThemeMode.dark
                ? AppTheme.darkTheme
                : AppTheme.lightTheme,
            builder: (context, theme) {
              return Directionality(
                textDirection: TextDirection.ltr,
                child: ThemeSwitchingArea(
                  child: MaterialApp.router(
                    routerConfig: appRouter,
                    debugShowCheckedModeBanner: false,
                    theme: theme,
                    title: 'E-Commerce',
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
