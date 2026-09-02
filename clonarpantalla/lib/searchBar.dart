import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(28),
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Buscar en Drive',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(width: 12),
          const Icon(Icons.star_border, color: Colors.amber, size: 24),
          const SizedBox(width: 12),
          CircleAvatar(
            backgroundColor: Colors.green[700],
            radius: 16,
            child: const Text('C', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
