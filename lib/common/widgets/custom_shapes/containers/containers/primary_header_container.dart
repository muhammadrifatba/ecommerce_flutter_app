import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/curved_edges/curve_edges_widget.dart';
import 'package:t_store/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        padding: const EdgeInsets.all(0),
        color: TColors.primary,
        child: Stack(children: [
          Positioned(
            top: -150,
            right: -250,
            child: TCircularContainer(
              backgroundColor: TColors.textWhite.withOpacity(0.1),
            ),
          ),
          Positioned(
            top: 100,
            right: -300,
            child: TCircularContainer(
              backgroundColor: TColors.textWhite.withOpacity(0.1),
            ),
          )
        ]),
      ),
    );
  }
}
