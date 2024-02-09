import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/rounded_container.dart';
import 'package:t_store/common/widgets/products_cart/cart/coupon_widget.dart';
import 'package:t_store/features/authentication/screen/sign_up/succes_screen.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_payment_method.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TCartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TRoundedContainer(
                padding: EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(children: [
                  //Pricing
                  TBillingAmountSection(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  //Fivider
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  //Payment Method
                  TBillingPaymentSection(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  //Address
                  TBillingAddressSection(),
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccesScreen(
                image: TImages.successfulPaymentIcon,
                title: 'Payment Succes',
                subTitle: 'Your Item will be Shipped soon!',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              )),
          child: const Text('Checkout Rp 250000'),
        ),
      ),
    );
  }
}
