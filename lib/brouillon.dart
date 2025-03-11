import 'package:flutter/material.dart';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200], // Fond similaire à la maquette
        appBar: AppBar(
          title: Text("Flutter Gallery"),
          backgroundColor: Colors.black,
        ),
        body: CategoriesSection(),
      ),
    );
  }
}

class CategoriesSection extends StatelessWidget {
  final List<CategoryItem> categories = [
    CategoryItem(
      title: "MATERIAL",
      description: "Banner, Bottom app bar, Bottom navigation...",
      icon: Icons.widgets,
      color: Colors.white,
    ),
    CategoryItem(
      title: "CUPERTINO",
      description: "Activity indicator, Alerts, Buttons...",
      icon: Icons.phone_iphone,
      color: Colors.white,
    ),
    CategoryItem(
      title: "STYLES AND OTHER",
      description: "Colours, Typography, 2D transformations...",
      icon: Icons.brush,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Deux colonnes
          childAspectRatio: 2.5, // Ajustement de la hauteur
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final CategoryItem category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(category.icon, color: Colors.pink, size: 30),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    category.description,
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  CategoryItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}
