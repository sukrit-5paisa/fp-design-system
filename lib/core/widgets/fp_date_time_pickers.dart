import 'package:flutter/material.dart';
import 'dart:math';

// ============================================================================
// DATE PICKER
// ============================================================================

class FPDatePicker extends StatelessWidget {
  final DateTime? selectedDate;
  final ValueChanged<DateTime>? onDateSelected;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? initialDate;
  final String? helpText;
  final String? cancelText;
  final String? confirmText;
  final String? fieldHintText;
  final String? fieldLabelText;
  final String? restorationId;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;
  final TextDirection? textDirection;
  final Widget? builder;
  final String? initialEntryMode;
  final String? selectableDayPredicate;

  const FPDatePicker({
    super.key,
    this.selectedDate,
    this.onDateSelected,
    this.firstDate,
    this.lastDate,
    this.initialDate,
    this.helpText,
    this.cancelText,
    this.confirmText,
    this.fieldHintText,
    this.fieldLabelText,
    this.restorationId,
    this.useRootNavigator = true,
    this.routeSettings,
    this.textDirection,
    this.builder,
    this.initialEntryMode,
    this.selectableDayPredicate,
  });

  @override
  Widget build(BuildContext context) {
    final pickerArgs = <Symbol, dynamic>{
      #context: context,
      #initialDate: initialDate ?? selectedDate ?? DateTime.now(),
      #firstDate: firstDate ?? DateTime(1900),
      #lastDate: lastDate ?? DateTime(2100),
      #helpText: helpText,
      #cancelText: cancelText,
      #confirmText: confirmText,
      #useRootNavigator: useRootNavigator,
      #routeSettings: routeSettings,
      #textDirection: textDirection,
    };
    if (initialEntryMode != null) {
      pickerArgs[#initialEntryMode] = DatePickerEntryMode.values.firstWhere(
        (e) => e.name == initialEntryMode,
        orElse: () => DatePickerEntryMode.calendar,
      );
    }
    if (selectableDayPredicate is bool Function(DateTime)) {
      pickerArgs[#selectableDayPredicate] = selectableDayPredicate;
    }
    return FutureBuilder<DateTime?>(
      future: Function.apply(showDatePicker, [], pickerArgs),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          onDateSelected?.call(snapshot.data!);
        }
        return const SizedBox.shrink();
      },
    );
  }
}

// ============================================================================
// DATE RANGE PICKER
// ============================================================================

class FPDateRangePicker extends StatelessWidget {
  final DateTimeRange? selectedDateRange;
  final ValueChanged<DateTimeRange>? onDateRangeSelected;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTimeRange? initialDateRange;
  final String? helpText;
  final String? cancelText;
  final String? confirmText;
  final String? errorInvalidRangeText;
  final String? fieldStartHintText;
  final String? fieldEndHintText;
  final String? fieldStartLabelText;
  final String? fieldEndLabelText;
  final String? restorationId;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;
  final TextDirection? textDirection;
  final Widget? builder;
  final String? initialEntryMode;
  final String? saveText;

  const FPDateRangePicker({
    super.key,
    this.selectedDateRange,
    this.onDateRangeSelected,
    this.firstDate,
    this.lastDate,
    this.initialDateRange,
    this.helpText,
    this.cancelText,
    this.confirmText,
    this.errorInvalidRangeText,
    this.fieldStartHintText,
    this.fieldEndHintText,
    this.fieldStartLabelText,
    this.fieldEndLabelText,
    this.restorationId,
    this.useRootNavigator = true,
    this.routeSettings,
    this.textDirection,
    this.builder,
    this.initialEntryMode,
    this.saveText,
  });

  @override
  Widget build(BuildContext context) {
    final rangePickerArgs = <Symbol, dynamic>{
      #context: context,
      #firstDate: firstDate ?? DateTime(1900),
      #lastDate: lastDate ?? DateTime(2100),
      #initialDateRange: initialDateRange ?? selectedDateRange,
      #helpText: helpText,
      #cancelText: cancelText,
      #confirmText: confirmText,
      #errorInvalidRangeText: errorInvalidRangeText,
      #fieldStartHintText: fieldStartHintText,
      #fieldEndHintText: fieldEndHintText,
      #fieldStartLabelText: fieldStartLabelText,
      #fieldEndLabelText: fieldEndLabelText,
      #useRootNavigator: useRootNavigator,
      #routeSettings: routeSettings,
      #textDirection: textDirection,
      #saveText: saveText,
    };
    if (initialEntryMode != null) {
      rangePickerArgs[#initialEntryMode] = DatePickerEntryMode.values.firstWhere(
        (e) => e.name == initialEntryMode,
        orElse: () => DatePickerEntryMode.calendar,
      );
    }
    return FutureBuilder<DateTimeRange?>(
      future: Function.apply(showDateRangePicker, [], rangePickerArgs),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          onDateRangeSelected?.call(snapshot.data!);
        }
        return const SizedBox.shrink();
      },
    );
  }
}

// ============================================================================
// TIME PICKER
// ============================================================================

class FPTimePicker extends StatelessWidget {
  final TimeOfDay? selectedTime;
  final ValueChanged<TimeOfDay>? onTimeSelected;
  final TimeOfDay? initialTime;
  final String? helpText;
  final String? cancelText;
  final String? confirmText;
  final String? fieldHintText;
  final String? fieldLabelText;
  final String? restorationId;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;
  final TextDirection? textDirection;
  final Widget? builder;
  final String? initialEntryMode;
  final String? hourLabelText;
  final String? minuteLabelText;

  const FPTimePicker({
    super.key,
    this.selectedTime,
    this.onTimeSelected,
    this.initialTime,
    this.helpText,
    this.cancelText,
    this.confirmText,
    this.fieldHintText,
    this.fieldLabelText,
    this.restorationId,
    this.useRootNavigator = true,
    this.routeSettings,
    this.textDirection,
    this.builder,
    this.initialEntryMode,
    this.hourLabelText,
    this.minuteLabelText,
  });

  @override
  Widget build(BuildContext context) {
    final timePickerArgs = <Symbol, dynamic>{
      #context: context,
      #initialTime: initialTime ?? selectedTime ?? TimeOfDay.now(),
      #helpText: helpText,
      #cancelText: cancelText,
      #confirmText: confirmText,
      #useRootNavigator: useRootNavigator,
      #routeSettings: routeSettings,
      #hourLabelText: hourLabelText,
      #minuteLabelText: minuteLabelText,
    };
    if (initialEntryMode != null) {
      timePickerArgs[#initialEntryMode] = TimePickerEntryMode.values.firstWhere(
        (e) => e.name == initialEntryMode,
        orElse: () => TimePickerEntryMode.dial,
      );
    }
    return FutureBuilder<TimeOfDay?>(
      future: Function.apply(showTimePicker, [], timePickerArgs),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          onTimeSelected?.call(snapshot.data!);
        }
        return const SizedBox.shrink();
      },
    );
  }
}

// ============================================================================
// CLOCK
// ============================================================================

class FPClock extends StatefulWidget {
  final TimeOfDay? selectedTime;
  final ValueChanged<TimeOfDay>? onTimeSelected;
  final TimeOfDay? initialTime;
  final bool use24HourFormat;
  final double size;
  final Color? backgroundColor;
  final Color? hourHandColor;
  final Color? minuteHandColor;
  final Color? secondHandColor;
  final Color? dialColor;
  final Color? numberColor;
  final double strokeWidth;

  const FPClock({
    super.key,
    this.selectedTime,
    this.onTimeSelected,
    this.initialTime,
    this.use24HourFormat = false,
    this.size = 200,
    this.backgroundColor,
    this.hourHandColor,
    this.minuteHandColor,
    this.secondHandColor,
    this.dialColor,
    this.numberColor,
    this.strokeWidth = 2.0,
  });

  @override
  State<FPClock> createState() => _FPClockState();
}

class _FPClockState extends State<FPClock> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  TimeOfDay _currentTime = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    _currentTime = widget.selectedTime ?? widget.initialTime ?? TimeOfDay.now();
    
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController);

    // Update time every second
    _animationController.addListener(() {
      if (_animationController.value == 1.0) {
        setState(() {
          _currentTime = TimeOfDay.now();
        });
        _animationController.reset();
        _animationController.forward();
      }
    });

    _animationController.forward();
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

    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: CustomPaint(
        painter: _ClockPainter(
          time: _currentTime,
          use24HourFormat: widget.use24HourFormat,
          backgroundColor: widget.backgroundColor ?? colorScheme.surface,
          hourHandColor: widget.hourHandColor ?? colorScheme.primary,
          minuteHandColor: widget.minuteHandColor ?? colorScheme.secondary,
          secondHandColor: widget.secondHandColor ?? colorScheme.tertiary,
          dialColor: widget.dialColor ?? colorScheme.outline,
          numberColor: widget.numberColor ?? colorScheme.onSurface,
          strokeWidth: widget.strokeWidth,
        ),
      ),
    );
  }
}

class _ClockPainter extends CustomPainter {
  final TimeOfDay time;
  final bool use24HourFormat;
  final Color backgroundColor;
  final Color hourHandColor;
  final Color minuteHandColor;
  final Color secondHandColor;
  final Color dialColor;
  final Color numberColor;
  final double strokeWidth;

  _ClockPainter({
    required this.time,
    required this.use24HourFormat,
    required this.backgroundColor,
    required this.hourHandColor,
    required this.minuteHandColor,
    required this.secondHandColor,
    required this.dialColor,
    required this.numberColor,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Draw background
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw dial
    final dialPaint = Paint()
      ..color = dialColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawCircle(center, radius - strokeWidth / 2, dialPaint);

    // Draw hour markers
    for (int i = 0; i < 12; i++) {
      final angle = i * 30 * pi / 180;
      final startRadius = radius - 10;
      final endRadius = radius - 2;
      
      final startPoint = Offset(
        center.dx + startRadius * cos(angle),
        center.dy + startRadius * sin(angle),
      );
      final endPoint = Offset(
        center.dx + endRadius * cos(angle),
        center.dy + endRadius * sin(angle),
      );

      final markerPaint = Paint()
        ..color = dialColor
        ..strokeWidth = strokeWidth * 2;
      canvas.drawLine(startPoint, endPoint, markerPaint);
    }

    // Draw numbers
    final textPainter = TextPainter(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );

    for (int i = 1; i <= 12; i++) {
      final angle = i * 30 * pi / 180 - pi / 2;
      final numberRadius = radius - 30;
      final numberPoint = Offset(
        center.dx + numberRadius * cos(angle),
        center.dy + numberRadius * sin(angle),
      );

      textPainter.text = TextSpan(
        text: i.toString(),
        style: TextStyle(
          color: numberColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(
          numberPoint.dx - textPainter.width / 2,
          numberPoint.dy - textPainter.height / 2,
        ),
      );
    }

    // Draw hands
    final hourAngle = (time.hour % 12 + time.minute / 60) * 30 * pi / 180 - pi / 2;
    final minuteAngle = time.minute * 6 * pi / 180 - pi / 2;
    final secondAngle = 0 * 6 * pi / 180 - pi / 2;

    // Hour hand
    final hourHandPaint = Paint()
      ..color = hourHandColor
      ..strokeWidth = strokeWidth * 3
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      center,
      Offset(
        center.dx + (radius * 0.5) * cos(hourAngle),
        center.dy + (radius * 0.5) * sin(hourAngle),
      ),
      hourHandPaint,
    );

    // Minute hand
    final minuteHandPaint = Paint()
      ..color = minuteHandColor
      ..strokeWidth = strokeWidth * 2
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      center,
      Offset(
        center.dx + (radius * 0.7) * cos(minuteAngle),
        center.dy + (radius * 0.7) * sin(minuteAngle),
      ),
      minuteHandPaint,
    );

    // Second hand
    final secondHandPaint = Paint()
      ..color = secondHandColor
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      center,
      Offset(
        center.dx + (radius * 0.8) * cos(secondAngle),
        center.dy + (radius * 0.8) * sin(secondAngle),
      ),
      secondHandPaint,
    );

    // Center dot
    final centerPaint = Paint()
      ..color = secondHandColor
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, strokeWidth * 2, centerPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// ============================================================================
// DATE TIME PICKER HELPERS
// ============================================================================

class FPDateTimePickerHelpers {
  static Future<DateTime?> showDatePicker({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    String? helpText,
    String? cancelText,
    String? confirmText,
  }) {
    return showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime(2100),
      helpText: helpText,
      cancelText: cancelText,
      confirmText: confirmText,
    );
  }

  static Future<DateTimeRange?> showDateRangePicker({
    required BuildContext context,
    DateTime? firstDate,
    DateTime? lastDate,
    DateTimeRange? initialDateRange,
    String? helpText,
    String? cancelText,
    String? confirmText,
  }) {
    return showDateRangePicker(
      context: context,
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime(2100),
      initialDateRange: initialDateRange,
      helpText: helpText,
      cancelText: cancelText,
      confirmText: confirmText,
    );
  }

  static Future<TimeOfDay?> showTimePicker({
    required BuildContext context,
    TimeOfDay? initialTime,
    String? helpText,
    String? cancelText,
    String? confirmText,
  }) {
    return showTimePicker(
      context: context,
      initialTime: initialTime ?? TimeOfDay.now(),
      helpText: helpText,
      cancelText: cancelText,
      confirmText: confirmText,
    );
  }
} 