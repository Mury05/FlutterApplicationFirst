import 'package:flutter/material.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200], // Fond similaire à la maquette
        appBar: AppBar(
          iconTheme: const IconThemeData.fallback(),
          title: Center(
            child: Text(
              "Flutter",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: const MyTestApp(),
      ),
    );
  }
}

class MyTestApp extends StatelessWidget {
  const MyTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 320,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                Text("Gallery",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Color.fromRGBO(20, 114, 109, 1),
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 15),
                const Gallery(),
              ],
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: [
              Text("Categories",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Color.fromRGBO(179, 58, 99, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Category(),
            ],
          ),

          // Categories Widget
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      textDirection: TextDirection.ltr,
      children: const [
        GalleryImage(
            link:
                "https://images.pexels.com/photos/1234567/pexels-photo-1234567.jpeg"),
        GalleryImage(
            link:
                "https://images.pexels.com/photos/1234567/pexels-photo-1234567.jpeg"),
        GalleryImage(
            link:
                "https://images.pexels.com/photos/1234567/pexels-photo-1234567.jpeg"),
        GalleryImage(
            link:
                "https://images.pexels.com/photos/1234567/pexels-photo-1234567.jpeg"),
      ],
    );
  }
}

class GalleryImage extends StatelessWidget {
  final String link;
  const GalleryImage({required this.link, super.key});

  @override
  Widget build(BuildContext context) {
    // return Image.network(link, scale: 10);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(link, scale: 10),
    );
  }
}

class Category extends StatelessWidget {
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
  Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      textDirection: TextDirection.ltr,
      children: [
        CardCategory(category: categories[0]),
        CardCategory(category: categories[1]),
        CardCategory(category: categories[2]),
      ],
    );
  }
}

class CardCategory extends StatelessWidget {
  final CategoryItem category;
  const CardCategory({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 470,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                EachCategory(category: category),
                SizedBox(height: 10),
                const Divider(),
                SizedBox(height: 10),
                ListCategory(),
                SizedBox(height: 10),
                const Divider(),
                SizedBox(height: 10),
                ListCategory(),
                SizedBox(height: 10),
                const Divider(),
                SizedBox(height: 10),
                ListCategory(),
              ],
            )),
      ),
    );
  }
}

class ListCategory extends StatelessWidget {
  const ListCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: [
        SizedBox(
          width: 5,
        ),
        Icon(Icons.book_sharp, color: Colors.pink, size: 20),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Banner',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
      
            Text(
              "Displaying a banner within a list",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            )
          ],
        )
      ],
    );
  }
}

class EachCategory extends StatelessWidget {
  const EachCategory({
    super.key,
    required this.category,
  });

  final CategoryItem category;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: [
        Icon(category.icon, color: Colors.pink, size: 30),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category.title,
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
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
