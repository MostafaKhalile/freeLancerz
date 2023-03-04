import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/theme/theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          Row(
            children: [
              const Text('Logout'),
              IconButton(
                  onPressed: controller.logout, icon: const Icon(Icons.logout)),
            ],
          )
        ],
      ),
      body: Obx(
        () => Center(
          child: controller.widgetOptions
              .elementAt(controller.selectedIndex.value),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Diensten',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Kalendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp),
              label: 'profiel',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: AppColors.primaryColor,
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
