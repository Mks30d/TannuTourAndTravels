import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/utils/colors.dart';
import 'package:tannu_tour_and_travels/widgets/my_subtitle.dart';
import 'package:tannu_tour_and_travels/widgets/my_title.dart';

class PopularDestinationsSection extends StatelessWidget {
  const PopularDestinationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> contentList = [
      [
        "assets/images/locations/photo(7).jpg",
        "Agra - Taj Mahal",
        "Visit the iconic symbol Of love",
        "~ 230 km from Delhi",
      ],
      [
        "assets/images/locations/photo(6).jpg",
        "Goa Beaches",
        "Relax on pristine beaches",
        "~ 600 km from Mumbai",
      ],
      [
        "assets/images/locations/photo(5).jpg",
        "Jaipur - Pink City",
        "Explore royal palaces and forts",
        "~ 280 km from Delhi",
      ],
      [
        "assets/images/locations/photo(3).jpg",
        "Shimla",
        "Colonial charm and mountain views",
        "~ 350 km from Delhi",
      ],
      [
        "assets/images/locations/photo(2).jpg",
        "Manali",
        "Adventure in the Himalayas",
        "~ 550 km from Delhi",
      ],
      [
        "assets/images/locations/photo(4).jpg",
        "Kerala Backwaters",
        "Experience serene waterways",
        "~ 700 km from Bangalore",
      ],
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          MyTitle(title: "Popular Destinations", fontSize: 35),
          MySubtitle(
            title:
                "Explore some of the most popular travel destinations in India with Tannu Tour and Travels.",
            fontSize: 16,
          ),

          SizedBox(height: 22),

          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 17,
            spacing: 17,

            children: [
              _destinationCard(
                title: contentList[0][1],
                subtitle: contentList[0][2],
                distance: contentList[0][3],
                image: contentList[0][0],
              ),
              _destinationCard(
                title: contentList[1][1],
                subtitle: contentList[1][2],
                distance: contentList[1][3],
                image: contentList[1][0],
              ),
              _destinationCard(
                title: contentList[2][1],
                subtitle: contentList[2][2],
                distance: contentList[2][3],
                image: contentList[2][0],
              ),
              _destinationCard(
                title: contentList[3][1],
                subtitle: contentList[3][2],
                distance: contentList[3][3],
                image: contentList[3][0],
              ),
              _destinationCard(
                title: contentList[4][1],
                subtitle: contentList[4][2],
                distance: contentList[4][3],
                image: contentList[4][0],
              ),
              _destinationCard(
                title: contentList[5][1],
                subtitle: contentList[5][2],
                distance: contentList[5][3],
                image: contentList[5][0],
              ),
            ],
          ),
        ],
      ),
    );
  }

  dynamic _destinationCard({
    required String title,
    required String subtitle,
    required String distance,
    required String image,
  }) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        borderRadius: BorderRadius.circular(11),
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
          // height: 245,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 190,
                width: double.infinity,
                child: Image.asset(image, fit: BoxFit.cover),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 11, 0, 15),
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
                        fontSize: 12,
                        color: Colors.black.withValues(alpha: 0.9),
                      ),
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 18,
                          color: primaryColor,
                        ),
                        SizedBox(width: 5),
                        Text(distance, style: TextStyle(color: primaryColor)),
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
