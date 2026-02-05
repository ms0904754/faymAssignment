# faym_assignment

This project is a Flutter application that displays a list of product collections using an **accordion-style UI**.  
Each collection can be expanded or collapsed to reveal product images, similar to the provided design.

# Approach

- Used **StatefulWidget** to manage UI state.
- Implemented an **index-based accordion mechanism**:
  - Maintains a single `expandedIndex`
  - When a collection is tapped:
    - If it is already expanded → collapse it
    - Otherwise → collapse previous and expand the new one
- Used:
  - 'AnimatedContainer' for smooth expand/collapse animation
  - 'ListView.builder' for scalable and scrollable lists
- Images are loaded using **network placeholders**.
- UI follows clean design principles:
  - Rounded corners
  - Elevation (shadow)
  - Minimal and readable layout

# Folder Structure

## Folder Structure

```text
lib/
├── main.dart
├── models/
│   └── collection_model.dart
├── screens/
│   └── collection_screen.dart
└── widgets/
    └── collection_card.dart

