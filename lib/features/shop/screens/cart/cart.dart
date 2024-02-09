import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/products_cart/cart/add_remove_button.dart';
import 'package:t_store/common/widgets/products_cart/cart/cart_item.dart';
import 'package:t_store/common/widgets/texts/produc_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:t_store/features/shop/screens/checkout/checkout.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace), child: TCartItems()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout Rp 250000'),
        ),
      ),
    );
  }
}
