import 'package:flutter/material.dart';

Icon getFavoritesIcon(bool isFavorite) {
  if (isFavorite) {
    return const Icon(Icons.favorite, color: Color(0xFFFF0000)); // Red heart for favorite
  } else {
    return const Icon(Icons.favorite_border, color: Color(0xFFFFFFFF)); // White heart outline for not favorite
  }
}
