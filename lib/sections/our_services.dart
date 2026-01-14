import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Text(
          "Our Services",
          style: TextStyle(
            fontSize: deviceWidth * 0.045,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          "Let's start your journey with us, your dream will come true",
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.5),
            fontSize: deviceWidth * 0.02,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: 11),

        Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          children: [
            carCard(color: Colors.red),
            carCard(color: Colors.blue),
            carCard(color: Colors.green),
          ],
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          children: [
            carCard(color: Colors.yellow),
            carCard(color: Colors.orange),
            carCard(color: Colors.purple),
          ],
        ),
      ],
    );
  }

  Card carCard({Color color = Colors.red}) {
    return Card(
      child: Container(
        constraints: BoxConstraints(maxWidth: 300),
        height: 200,
        color: color,
        child: Column(
          children: [
            Image.asset("assets/images/car.png", fit: BoxFit.cover),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                Row(children: [Icon(Icons.person), Text("4 Passangers")]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
