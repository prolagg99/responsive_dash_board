import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              transactionModel: UserInfoModel(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                icon: Assets.imagesAvatar3,
              ),
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
