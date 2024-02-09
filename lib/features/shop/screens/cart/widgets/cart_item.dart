import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products_cart/cart/add_remove_button.dart';
import 'package:t_store/common/widgets/products_cart/cart/cart_item.dart';
import 'package:t_store/common/widgets/texts/produc_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 2,
        separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
        itemBuilder: (_, index) => Column(
              children: [
                const TCartItem(),
                if (showAddRemoveButton)
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                if (showAddRemoveButton)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          TProductQuantityWithAddRemoveBUtton(),
                        ],
                      ),
                      TProductPriceText(price: '256000')
                    ],
                  ),
              ],
            ));
  }
}
