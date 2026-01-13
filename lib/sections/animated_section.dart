import 'package:flutter/material.dart';

class AnimatedSection extends StatefulWidget {
  const AnimatedSection({super.key});

  @override
  State<AnimatedSection> createState() => _AnimatedSectionState();
}

class _AnimatedSectionState extends State<AnimatedSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // Create animation controller with 2-second duration for smooth movement
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // Create a curved animation that goes from -50 to 50 (pixels offset)
    // Using easeInOut for smooth acceleration and deceleration
    _slideAnimation = Tween<double>(begin: -100.0, end: 100.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    // Start the animation and make it repeat back and forth continuously
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 85,
                left: 70,
                child: Container(height: 15, width: 280, color: Colors.yellow),
              ),
              Column(
                children: [
                  Text(
                    "Lifelong memories just a",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "few seconds away",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),

          Text(
            "Let's start your journey with us, your dream will come true",
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: 18),

          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/headerMountain.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Spacer(),
                // Animated image with smooth left-right movement
                AnimatedBuilder(
                  animation: _slideAnimation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(_slideAnimation.value, 0),
                      child: child,
                    );
                  },
                  child: SizedBox(
                    height: 150,
                    child: Image.asset(
                      "assets/images/van.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
