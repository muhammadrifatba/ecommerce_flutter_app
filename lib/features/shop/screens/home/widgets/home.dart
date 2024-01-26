import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/curved_edges/curve_edges_widget.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/curved_edges/curved_edges.dart';
import 'package:t_store/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          TPrimaryHeaderContainer(
              child: Column(
            children: [],
          )),
        ],
      )),
    );
  }
}


