import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/search_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/curved_edges/curve_edges_widget.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/curved_edges/curved_edges.dart';
import 'package:t_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products_cart/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/products_cart/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/controllers/home_controller.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const TPrimaryHeaderContainer(
              child: Column(
            children: [
              THomeAppBar(),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TSearchContainer(
                text: 'Search in Store',
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                child: Column(
                  children: [
                    TSectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    THomeCategories()
                  ],
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TPromoSlider(
                  banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ],
                ),
                TSectionHeading(
                  title: 'Popular Products',
                  showActionButton: true,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical())
              ],
            ),
          )
        ],
      )),
    );
  }
}
