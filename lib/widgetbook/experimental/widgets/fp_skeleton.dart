import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../../core/theme/theme.dart';

/// FP Design System Skeleton Widget
/// A customizable skeleton component for loading states
@WidgetbookStory(name: 'FPSkeleton', useCases: [
  FPSkeletonUseCase,
])
class FPSkeleton extends StatefulWidget {
  /// The width of the skeleton
  final double? width;

  /// The height of the skeleton
  final double? height;

  /// The border radius of the skeleton
  final double? borderRadius;

  /// The color of the skeleton
  final Color? color;

  /// The animation duration
  final Duration animationDuration;

  /// Whether the skeleton is animated
  final bool animated;

  const FPSkeleton({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.color,
    this.animationDuration = const Duration(milliseconds: 1500),
    this.animated = true,
  });

  @override
  State<FPSkeleton> createState() => _FPSkeletonState();
}

class _FPSkeletonState extends State<FPSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    if (widget.animated) {
      _animationController.repeat();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final skeletonColor = widget.color ?? colorScheme.outlineVariant.withOpacity(0.3);

    Widget skeleton = Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: skeletonColor,
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
      ),
    );

    if (widget.animated) {
      skeleton = AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  skeletonColor,
                  skeletonColor.withOpacity(0.5),
                  skeletonColor,
                ],
                stops: [
                  0.0,
                  _animation.value,
                  1.0,
                ],
              ),
            ),
          );
        },
      );
    }

    return skeleton;
  }
}

/// Use case for FPSkeleton in Widgetbook
class FPSkeletonUseCase extends WidgetbookUseCase {
  const FPSkeletonUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPSkeleton(
      width: 200,
      height: 20,
    );
  }
} 