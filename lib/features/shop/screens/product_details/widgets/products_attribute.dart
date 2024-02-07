import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/chips/choice_cip.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/rounded_container.dart';
import 'package:t_store/common/widgets/texts/produc_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Row(
            children: [
              const TSectionHeading(
                title: 'Variation',
                showActionButton: false,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const TProductTitleText(
                        title: 'Price',
                        smallSize: true,
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      Text(
                        ' Rp 250.0000',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      const TProductPriceText(price: '180000'),
                    ],
                  ),
                  Row(
                    children: [
                      const TProductTitleText(
                        title: 'Stock',
                        smallSize: true,
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      Text(
                        'In Stock',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          //Variations Description
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors'),
            SizedBox(height: TSizes.spaceBtwInputFields),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                    text: 'Red', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Pink', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Purple', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors'),
            SizedBox(height: TSizes.spaceBtwInputFields),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: ' Eur 39',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                    text: ' Eur 40', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Eur 42', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Eur 43', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Eur 44', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Eur 45', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
