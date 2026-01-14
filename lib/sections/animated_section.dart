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
    double deviceWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: deviceWidth * 0.11,
                left: deviceWidth * 0.08,
                child: Container(
                  height: deviceWidth * 0.025,
                  width: deviceWidth * 0.39,
                  color: const Color(0xFFFFC400),
                ),
              ),
              Column(
                children: [
                  Text(
                    "Lifelong memories just a",
                    style: TextStyle(
                      fontSize: deviceWidth * 0.05,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "few seconds away",
                    style: TextStyle(
                      fontSize: deviceWidth * 0.05,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Text(
            "Let's start your journey with us, your dream will come true",
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.5),
              fontSize: deviceWidth * 0.02,
              fontWeight: FontWeight.w600,
            ),
          ),

          Stack(
            children: [
              Image.asset("assets/images/bg.png", fit: BoxFit.cover),

              Positioned(
                top: deviceWidth * 0.2,
                left: deviceWidth * 0.3,
                child: AnimatedBuilder(
                  animation: _slideAnimation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(_slideAnimation.value, 0),
                      child: child,
                    );
                  },
                  child: SizedBox(
                    height: deviceWidth * 0.18,
                    child: Image.asset(
                      "assets/images/car.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
