import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msccolone/theming/colors.dart';
import '../navigations/navigation_controller.dart';

import 'package:msccolone/resposive.dart';



import 'widgets/side_menu.dart';



class MainScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final contentController = Get.put(SelectedContentController());
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child:Obx(
              () => SideMenu(
            onMenuItemSelected: (index) {
              if (index<=3)
                contentController.selectedIndex.value = index;
            },
            selectedIndex: contentController.selectedIndex.value, // Reactive value
          ),
        )
      ),

      body: Responsive(
        // Mobile View
        mobile: Stack(
          children: [
            Obx(
                  () => contentController.contentWidgets[contentController.selectedIndex.value],
            ),
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
            if (!Responsive.isDesktop(context)) SizedBox(width: 5),
          ],
        ),
        // Tablet View
        tablet: Stack(
          children: [

            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Obx(
                        () => contentController.contentWidgets[contentController.selectedIndex.value],
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: Icon(Icons.menu),
                color: colorManager.kGrayColor,
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
            if (!Responsive.isDesktop(context)) SizedBox(width: 5),
          ],
        ),
        // Desktop View
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: Obx(
                    () => SideMenu(
                  onMenuItemSelected: (index) {
                    if (index<=3)
                      contentController.selectedIndex.value = index;
                  },
                  selectedIndex: contentController.selectedIndex.value, // Reactive value
                ),
              )
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: Obx(
                    () => contentController.contentWidgets[contentController.selectedIndex.value],
              ),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
