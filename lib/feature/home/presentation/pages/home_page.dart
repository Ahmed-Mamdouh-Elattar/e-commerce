import 'package:e_commerce/feature/home/presentation/widgets/home_appbar.dart';
import 'package:e_commerce/feature/home/presentation/widgets/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: HomeAppBar(), body: HomePageBody());
  }
}
