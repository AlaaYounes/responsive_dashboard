import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/draw_items_listview.dart';
import 'package:responsive_dashboard/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              itemModel: UserInfoModel(
                name: 'Lekan Okeowo',
                email: 'demo@gmail.com',
                image: Assets.imagesAvatar3,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Settings', image: Assets.imagesSettings)),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          title: 'Logout account', image: Assets.imagesLogout)),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
