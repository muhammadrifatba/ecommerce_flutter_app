import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/list_tile/TUserPorfileTile.dart';
import 'package:t_store/common/widgets/list_tile/menu_tiles.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/address/adress.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile.dart';
import 'package:t_store/features/shop/screens/order/order.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                      title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  )),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TUserProfileTile(
                      onPressed: () => Get.to(() => ProfileScreen)),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.defaultSpace,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set Shopping Delivery Address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, Remove Products and Move to Checkout',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In Progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw Balance to Registered Bank',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted items',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'My Address',
                    subTitle: 'Set any kind of Notifications',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'My Address',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to Your Cloud Firebase',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Upload Data to Your Cloud Firebase',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Safe Mode',
                    subTitle: 'Upload Data to Your Cloud Firebase',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Upload Data to Your Cloud Firebase',
                    trailing: SizedBox(
                      child: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections * 2.5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
