import 'package:flutter/material.dart';

class FloatingButtons extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  const FloatingButtons({
    super.key,
    required this.increase,
    required this.decrease,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => increase(),
            child: const Icon(Icons.exposure_plus_1_outlined),
          ),
          FloatingActionButton(
            onPressed: () => reset(),
            child: const Icon(Icons.exposure_zero_outlined),
          ),
          FloatingActionButton(
            onPressed: () => decrease(),
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}
