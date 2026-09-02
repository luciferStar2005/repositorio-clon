import 'package:flutter/material.dart';
import 'theme_app.dart';

class FilesGridView extends StatelessWidget {
  const FilesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de ejemplo con datos simulados
    final List<Map<String, dynamic>> items = [
      {'name': 'American authors', 'type': 'folder', 'color': Colors.grey},
      {'name': 'AnA', 'type': 'folder', 'color': Colors.grey},
      {'name': 'Ciencias naturales', 'type': 'folder', 'color': Colors.grey},
      {'name': 'Colab Notebooks', 'type': 'folder', 'color': Color(0xFFFABB05)},
      {'name': 'Comic', 'type': 'folder', 'color': Colors.grey},
      {'name': 'Comic lux', 'type': 'folder', 'color': Colors.grey},
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio:
            1.1, // Ajusta la proporción para que parezcan tarjetas
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.folder,
                          color: item['color'] ?? Colors.grey,
                          size: 28,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            item['name'],
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Icon(Icons.more_vert, size: 20),
                      ],
                    ),
                    const Spacer(), // Empuja la carpeta grande hacia abajo
                  ],
                ),
              ),
              // Icono grande de la carpeta al centro/abajo
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Icon(
                    Icons.folder_open,
                    size: 80,
                    color: (item['color'] as Color).withOpacity(0.3),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
