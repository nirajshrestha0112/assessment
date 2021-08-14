import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myImageAndCaption = [
      [
        "https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
        "Electronic Devices"
      ],
      [
        "https://images.unsplash.com/photo-1517466787929-bc90951d0974?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=333&q=80",
        "Sports & Outdoor"
      ],
      [
        "https://images.pexels.com/photos/1342609/pexels-photo-1342609.jpeg?cs=srgb&dl=pexels-the-lazy-artist-gallery-1342609.jpg&fm=jpg",
        "Men's Fashion"
      ],
      [
        "https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80",
        "Women's Fashion"
      ],
      [
        "https://images.unsplash.com/photo-1508057198894-247b23fe5ade?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
        "Watches & Accessories"
      ],
      [
        "https://media.gettyimages.com/photos/pregnant-women-with-son-and-their-dog-walking-on-the-street-picture-id1011297944",
        "Gcroceries & Pets"
      ],
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1,
          children: [
            ...myImageAndCaption.map(
              (i) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        i.first,
                        fit: BoxFit.cover,
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(i.last),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
