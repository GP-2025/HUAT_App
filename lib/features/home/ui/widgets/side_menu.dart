import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:msccolone/features/extensions/extensions.dart';

import 'package:websafe_svg/websafe_svg.dart';
import '../../../../resposive.dart';
import '../../../../theming/colors.dart';
import '../../../../theming/local_variables.dart';

import 'side_menu_item.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({Key? key, required this.onMenuItemSelected, required this.selectedIndex}) : super(key: key);
  final Function(int) onMenuItemSelected;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(SelectedContentController());

    return Scaffold(
      body: Container(
          height: double.infinity,
          padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
          color: colorManager.kBgLightColor,
          child: SafeArea(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/logo.png",
                            width: 50,
                          ),
                        ),
                        Spacer(),
                        if (!Responsive.isDesktop(context)) CloseButton(),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    MaterialButton(
                      minWidth: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: colorManager.kPrimaryColor,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WebsafeSvg.asset("assets/Icons/Edit.svg", width: 16),
                          SizedBox(width: 8),
                          Text(
                            "Compose",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ).addNeumorphism(
                      topShadowColor: Colors.white,
                      bottomShadowColor: Color(0xFF234395).withOpacity(0.2),
                    ),
                    SizedBox(height: kDefaultPadding),
                    MaterialButton(
                      minWidth: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: colorManager.kBgDarkColor,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WebsafeSvg.asset("assets/Icons/Download.svg", width: 16),
                          SizedBox(width: 8),
                          Text(
                            "Get messages",
                            style: TextStyle(color: colorManager.kTextColor),
                          ),
                        ],
                      ),
                    ).addNeumorphism(),
                    SizedBox(height: kDefaultPadding * 2),
                    // Menu Items with navigation
                    SideMenuItem(
                      press: () => onMenuItemSelected(0),
                      title: "Inbox",
                      iconSrc: "assets/Icons/Inbox.svg",
                      isActive: selectedIndex == 0,
                      itemCount: 3,
                      color: colorManager.huatInbox,
                    ),
                    SideMenuItem(
                      press: () => onMenuItemSelected(1),
                      title: "Sent",
                      iconSrc: "assets/Icons/Send.svg",
                      isActive: selectedIndex == 1,
                      itemCount: null,
                      color: colorManager.huatSent,
                    ),
                    SideMenuItem(
                      press: () => onMenuItemSelected(2),
                      title: "Drafts",
                      iconSrc: "assets/Icons/File.svg",
                      isActive: selectedIndex == 2,
                      itemCount: null,
                      color: colorManager.huatDraft,
                    ),
                    SideMenuItem(
                      press: () => onMenuItemSelected(3),
                      title: "Trash",
                      iconSrc: "assets/Icons/Trash.svg",
                      isActive: selectedIndex == 3,
                      showBorder: false,
                      itemCount: null,
                      color: colorManager.huatTrash,
                    ),
                    Divider(),
                    SideMenuItem(
                      press:() {
                        onMenuItemSelected(4);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("alart"
                                  ),
                              content: SizedBox(
                                width:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.8,
                                height:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.6,
                                child: Text("try to have a dialog"),
                              ),
                            );
                          },
                        );
                      } ,
                      title: "Settings ",
                      iconSrc: "assets/Icons/Trash.svg",
                      isActive: selectedIndex ==4 ,
                      showBorder: false,
                      itemCount: null,
                      color: colorManager.kikiBlack,
                    ),

                  ],
                ),
              ),
            ),
          ),


    );
  }
}
