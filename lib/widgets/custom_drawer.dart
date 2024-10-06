import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Setting system',
                      image: Assets.imagesSetting,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Logout accuont',
                      image: Assets.imagesLogout,
                    ),
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
