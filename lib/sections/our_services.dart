import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    // double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Text(
          "Our Services",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),

        Text(
          "Let's start your journey with us, your dream will come true",
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.5),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: 22),

        Wrap(
          spacing: 15,
          runSpacing: 15,
          alignment: WrapAlignment.center,
          children: [
            carCard(
              name: "Sedan",
              seats: "4",
              image: "assets/images/vehicles/sedan.jpg",
              color: Colors.red,
            ),
            carCard(
              name: "Dezire",
              seats: "5",
              image: "assets/images/vehicles/dzire.jpg",
              color: Colors.blue,
            ),
            carCard(
              name: "Innova",
              seats: "7-8",
              image: "assets/images/vehicles/innova.jpg",
              color: Colors.green,
            ),
          ],
        ),

        SizedBox(height: 22),

        Wrap(
          spacing: 15,
          runSpacing: 15,
          alignment: WrapAlignment.center,
          children: [
            carCard(
              name: "Crysta",
              seats: "4",
              image: "assets/images/vehicles/crysta.jpg",
              color: Colors.yellow,
            ),
            carCard(
              name: "Luxury Car",
              seats: "4",
              image: "assets/images/vehicles/audi.jpg",
              color: Colors.yellow,
            ),
            carCard(
              name: "Mini Bus",
              seats: "12-15",
              image: "assets/images/vehicles/minibus.jpg",
              color: Colors.orange,
            ),
            carCard(
              name: "Standard Bus",
              seats: "25-30",
              image: "assets/images/vehicles/bus.jpg",
              color: Colors.purple,
            ),
          ],
        ),
      ],
    );
  }

  dynamic carCard({
    required String name,
    required String seats,
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
                height: 173,
                width: double.infinity,
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Icon(Icons.group_outlined),
                        SizedBox(width: 5),
                        Text("$seats Passangers"),
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
