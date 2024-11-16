import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2, // Adjust the count based on your needs
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 20,
                width: 200,
                color: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}
