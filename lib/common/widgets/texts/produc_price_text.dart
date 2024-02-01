import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySign = 'Rp ',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThorugh = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThorugh;
  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThorugh ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThorugh ? TextDecoration.lineThrough : null),
    );
  }
}
