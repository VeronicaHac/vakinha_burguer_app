import 'package:flutter/material.dart';
import 'package:vakinha_burguer_app/app/core/provider/application_binding.dart';
import 'package:vakinha_burguer_app/app/core/ui/theme/theme_config.dart';
import 'package:vakinha_burguer_app/app/core/ui/widgets/product_detail/product_detail_page.dart';
import 'package:vakinha_burguer_app/app/core/ui/widgets/product_detail/product_detail_router.dart';
import 'package:vakinha_burguer_app/app/pages/home/home_page.dart';
import 'package:vakinha_burguer_app/app/pages/splash/splash_page.dart';

import 'pages/home/home_router.dart';

class VakinhaBurguerApp extends StatelessWidget {
  const VakinhaBurguerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: "Delivery App",
        theme: ThemeConfig.theme,
        routes: {
          "/": (context) => const SplashPage(),
          "/home": (context) => HomeRouter.page,
          "/productDetail": (context) => ProductDetailRouter.page,
        },
      ),
    );
  }
}
