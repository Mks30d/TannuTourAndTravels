import 'package:flutter/material.dart';

class PopularDestinationsSection extends StatelessWidget {
  const PopularDestinationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/locations/photo(2).jpg",
      "assets/images/locations/photo(3).jpg",
      "assets/images/locations/photo(4).jpg",
      "assets/images/locations/photo(5).jpg",
      "assets/images/locations/photo(6).jpg",
      "assets/images/locations/photo(7).jpg",
    ];

    return Column(
      children: [
        Text(
          "Popular Destinations",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),

        Text(
          "Explore some of the most popular travel destinations in India with Tannu Tour and Travels.",
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.5),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: 22),

        Wrap(
          alignment: WrapAlignment.center,
          children: [
            destinationCard(
              title: "name",
              subtitle: "seats",
              distance: "distance",
              image: images[0],
            ),
            destinationCard(
              title: "name",
              subtitle: "seats",
              distance: "distance",
              image: images[1],
            ),
            destinationCard(
              title: "name",
              subtitle: "seats",
              distance: "distance",
              image: images[2],
            ),
            destinationCard(
              title: "name",
              subtitle: "seats",
              distance: "distance",
              image: images[3],
            ),
            destinationCard(
              title: "name",
              subtitle: "seats",
              distance: "distance",
              image: images[4],
            ),
            destinationCard(
              title: "name",
              subtitle: "seats",
              distance: "distance",
              image: images[5],
            ),
          ],
        ),
      ],
    );
  }

  dynamic destinationCard({
    required String title,
    required String subtitle,
    required String distance,
    required String image,
    Color color = Colors.red,
  }) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color(0xffb4b4b4),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          constraints: BoxConstraints(maxWidth: 300),
          height: 245,
          color: color,
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Icon(Icons.pin_drop_outlined),
                        SizedBox(width: 5),
                        Text(distance),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
