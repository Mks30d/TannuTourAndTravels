import 'package:flutter/material.dart';

class IndiaMapSection extends StatelessWidget {
  IndiaMapSection({super.key});

  final List<String> indianStates = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Serving All Across India",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),

        Text(
          "From Kashmir to Kanyakumari, Kutch to Kohima - Tannu Tour and Travels provides reliable",
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.5),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "transportation services throughout India",
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.5),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: 22),

        Wrap(children: [mapSection(), stateSection()]),
      ],
    );
  }

  Container mapSection() {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/locations/photo(1).jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: Colors.blue.withValues(alpha: 0.9),
        padding: EdgeInsets.all(30),
        child: Image.asset(
          "assets/images/locations/photo(1).jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  dynamic stateSection() {
    return Container(
      width: 300,
      padding: EdgeInsets.fromLTRB(18, 11, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pan-India Coverage",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          Text(
            "Experience seamless travel across every corner of India with our extensive network and well-maintained fleet.",
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),

          Wrap(
            children: indianStates
                .map(
                  (state) => Container(
                    margin: EdgeInsets.fromLTRB(0, 3, 5, 3),
                    padding: EdgeInsets.fromLTRB(11, 6, 11, 6),
                    decoration: BoxDecoration(
                      color: Colors.blue.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      state,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),

          Container(
            padding: EdgeInsets.all(8),
            color: Colors.blueAccent,
            child: Column(
              children: [
                Text(
                  "Available 24/7 for Bookings",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "+91 9876543210",
                  style: TextStyle(
                    color: Colors.grey.withValues(alpha: 0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Call us anytime, anywhere in India",
                  style: TextStyle(
                    color: Colors.grey.withValues(alpha: 0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
