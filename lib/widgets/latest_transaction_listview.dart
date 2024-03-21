import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_listTile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        name: 'Josua Nunito',
        email: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(itemModel: e)),
            )
            .toList(),
      ),
    );

    // if there is a lot of widgets with not fixed number, use the below code
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
              child: UserInfoListTile(itemModel: items[index]));
        },
        itemCount: items.length,
      ),
    );
  }
}
