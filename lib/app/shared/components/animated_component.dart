import 'package:flutter/material.dart';

class AnimatedComponent extends StatefulWidget {
  final Widget child;
  final double delay;

  const AnimatedComponent({
    super.key,
    required this.child,
    required this.delay,
  });

  @override
  State<AnimatedComponent> createState() => _AnimatedComponentState();
}

class _AnimatedComponentState extends State<AnimatedComponent>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ),
    )..forward(from: 0.0);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(
            widget.delay * 0.2,
            (widget.delay + 1) * 0.2,
            curve: Curves.easeIn,
          ),
        ),
      ),
      child: widget.child,
    );
  }
}
