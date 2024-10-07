import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iot_application/views/widgets/glass.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? _timer;
  int _start = 10;
  bool _isRunning = false;

  void startTimer() {
    if (_isRunning) return;
    _isRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        _timer?.cancel();
        _isRunning = false;
      }
    });
  }

  void pauseTime() {
    if (_timer != null) {
      _timer?.cancel();
      _isRunning = false;
    }
  }

  void increaseTime() {
    setState(() {
      _start += 60;
    });
  }

  void decreaseTime() {
    if (_start > 0) {
      setState(() {
        _start -= 60;
      });
    }
  }

  void stopTime() {
    if (_start > 0) {
      setState(() {
        _start = 0;
      });
    }
  }

  void toggleTimer() {
    if (_isRunning) {
      stopTime();
    }
    startTimer();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;

    return SingleChildScrollView(
      child: Center(
        child: Stack(
          children: [
            Center(
              child: GlassMorphismWidget(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width,
                box: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "${seconds.toString().padLeft(2, '0')} ",
                              style: const TextStyle(
                                  fontSize: 40, color: Color(0xFFD9FE74)),
                            ),
                            const TextSpan(
                              text: "sec",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFFD9FE74)),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: "${minutes.toString().padLeft(2, '0')} ",
                                style: const TextStyle(
                                    fontSize: 40, color: Color(0xFFD9FE74))),
                            const TextSpan(
                              text: "min",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFFD9FE74)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 140,
              child: GlassMorphismWidget(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.50,
                box: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Target Time',
                        style: TextStyle(
                          color: Color(0xFFB9B8B8),
                          fontFamily: 'ClashDisplay',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 133,
              child: GlassMorphismWidget(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.52,
                box: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: increaseTime,
                      icon: const Icon(
                        Icons.rotate_right_outlined,
                        size: 45,
                        color: Color(0xFFB9B8B8),
                      ),
                    ),
                    IconButton(
                      onPressed: toggleTimer,
                      icon: Icon(
                        _isRunning
                            ? Icons.stop_circle_outlined
                            : Icons.play_arrow_rounded,
                        size: 45,
                        color: const Color(0xFFB9B8B8),
                      ),
                    ),
                    IconButton(
                      onPressed: decreaseTime,
                      icon: const Icon(
                        Icons.rotate_left_outlined,
                        size: 45,
                        color: Color(0xFFB9B8B8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
