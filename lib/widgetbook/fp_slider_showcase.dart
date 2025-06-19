import 'package:flutter/material.dart';
import '../core/widgets/fp_slider.dart';

class FPSliderShowcase extends StatefulWidget {
  const FPSliderShowcase({super.key});

  @override
  State<FPSliderShowcase> createState() => _FPSliderShowcaseState();
}

class _FPSliderShowcaseState extends State<FPSliderShowcase> {
  double _continuousValue = 0.5;
  double _discreteValue = 2;
  RangeValues _rangeValues = const RangeValues(0.2, 0.8);
  double _customValue = 0.3;
  double _volumeValue = 0.7;
  RangeValues _priceRange = const RangeValues(10, 90);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Slider Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Continuous Sliders',
              [
                _buildSliderDemo(
                  'Basic Continuous',
                  Column(
                    children: [
                      FPSlider(
                        type: FPSliderType.continuous,
                        value: _continuousValue,
                        onChanged: (value) {
                          setState(() {
                            _continuousValue = value;
                          });
                        },
                      ),
                      Text('Value: ${_continuousValue.toStringAsFixed(2)}'),
                    ],
                  ),
                ),
                _buildSliderDemo(
                  'With Custom Range',
                  Column(
                    children: [
                      FPSlider(
                        type: FPSliderType.continuous,
                        value: _customValue,
                        min: 0,
                        max: 100,
                        onChanged: (value) {
                          setState(() {
                            _customValue = value;
                          });
                        },
                      ),
                      Text('Value: ${_customValue.round()}'),
                    ],
                  ),
                ),
                _buildSliderDemo(
                  'Volume Control',
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.volume_down),
                          Expanded(
                            child: FPSlider(
                              type: FPSliderType.continuous,
                              value: _volumeValue,
                              onChanged: (value) {
                                setState(() {
                                  _volumeValue = value;
                                });
                              },
                            ),
                          ),
                          const Icon(Icons.volume_up),
                        ],
                      ),
                      Text('Volume: ${(_volumeValue * 100).round()}%'),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'Discrete Sliders',
              [
                _buildSliderDemo(
                  'Basic Discrete',
                  Column(
                    children: [
                      FPSlider(
                        type: FPSliderType.discrete,
                        value: _discreteValue,
                        min: 0,
                        max: 5,
                        onChanged: (value) {
                          setState(() {
                            _discreteValue = value;
                          });
                        },
                      ),
                      Text('Rating: ${_discreteValue.round()}/5'),
                    ],
                  ),
                ),
                _buildSliderDemo(
                  'With Divisions',
                  Column(
                    children: [
                      FPSlider(
                        type: FPSliderType.discrete,
                        value: _discreteValue,
                        min: 0,
                        max: 10,
                        divisions: 10,
                        onChanged: (value) {
                          setState(() {
                            _discreteValue = value;
                          });
                        },
                      ),
                      Text('Level: ${_discreteValue.round()}/10'),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'Range Sliders',
              [
                _buildSliderDemo(
                  'Basic Range',
                  Column(
                    children: [
                      FPSlider(
                        type: FPSliderType.range,
                        value: _rangeValues.start,
                        rangeValues: _rangeValues,
                        onRangeChanged: (values) {
                          setState(() {
                            _rangeValues = RangeValues(
                              values.start.clamp(0.0, 1.0),
                              values.end.clamp(0.0, 1.0),
                            );
                          });
                        },
                      ),
                      Text('Range: ${_rangeValues.start.toStringAsFixed(1)} - ${_rangeValues.end.toStringAsFixed(1)}'),
                    ],
                  ),
                ),
                _buildSliderDemo(
                  'Price Range',
                  Column(
                    children: [
                      FPSlider(
                        type: FPSliderType.range,
                        value: _priceRange.start,
                        rangeValues: _priceRange,
                        min: 0,
                        max: 100,
                        divisions: 20,
                        onRangeChanged: (values) {
                          setState(() {
                            _priceRange = RangeValues(
                              values.start.clamp(0.0, 100.0),
                              values.end.clamp(0.0, 100.0),
                            );
                          });
                        },
                      ),
                      Text('\$${_priceRange.start.round()} - \$${_priceRange.end.round()}'),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'Custom Styled Sliders',
              [
                _buildSliderDemo(
                  'Custom Colors',
                  FPSlider(
                    type: FPSliderType.continuous,
                    value: _continuousValue,
                    activeColor: Colors.green,
                    inactiveColor: Colors.grey.shade300,
                    onChanged: (value) {
                      setState(() {
                        _continuousValue = value;
                      });
                    },
                  ),
                ),
                _buildSliderDemo(
                  'Custom Range Colors',
                  FPSlider(
                    type: FPSliderType.range,
                    value: _rangeValues.start,
                    rangeValues: _rangeValues,
                    activeColor: Colors.purple,
                    inactiveColor: Colors.purple.shade100,
                    onRangeChanged: (values) {
                      setState(() {
                        _rangeValues = RangeValues(
                          values.start.clamp(0.0, 1.0),
                          values.end.clamp(0.0, 1.0),
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
            _buildSection(
              'Convenience Widgets',
              [
                _buildSliderDemo(
                  'FPContinuousSlider',
                  Column(
                    children: [
                      FPContinuousSlider(
                        value: _continuousValue,
                        onChanged: (value) {
                          setState(() {
                            _continuousValue = value;
                          });
                        },
                      ),
                      Text('Value: ${_continuousValue.toStringAsFixed(2)}'),
                    ],
                  ),
                ),
                _buildSliderDemo(
                  'FPDiscreteSlider',
                  Column(
                    children: [
                      FPDiscreteSlider(
                        value: _discreteValue,
                        min: 0,
                        max: 5,
                        onChanged: (value) {
                          setState(() {
                            _discreteValue = value;
                          });
                        },
                      ),
                      Text('Rating: ${_discreteValue.round()}/5'),
                    ],
                  ),
                ),
                _buildSliderDemo(
                  'FPRangeSlider',
                  Column(
                    children: [
                      FPRangeSlider(
                        values: _rangeValues,
                        onChanged: (values) {
                          setState(() {
                            _rangeValues = RangeValues(
                              values.start.clamp(0.0, 1.0),
                              values.end.clamp(0.0, 1.0),
                            );
                          });
                        },
                      ),
                      Text('Range: ${_rangeValues.start.toStringAsFixed(1)} - ${_rangeValues.end.toStringAsFixed(1)}'),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'Disabled Sliders',
              [
                _buildSliderDemo(
                  'Disabled Continuous',
                  FPSlider(
                    type: FPSliderType.continuous,
                    value: 0.5,
                    enabled: false,
                    onChanged: (value) {},
                  ),
                ),
                _buildSliderDemo(
                  'Disabled Range',
                  FPSlider(
                    type: FPSliderType.range,
                    value: 0.3,
                    rangeValues: const RangeValues(0.3, 0.7),
                    enabled: false,
                    onRangeChanged: (values) {},
                  ),
                ),
              ],
            ),
            _buildSection(
              'Real-world Examples',
              [
                _buildExample(
                  'Brightness Control',
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.brightness_low),
                          Expanded(
                            child: FPSlider(
                              type: FPSliderType.continuous,
                              value: _continuousValue,
                              onChanged: (value) {
                                setState(() {
                                  _continuousValue = value;
                                });
                              },
                            ),
                          ),
                          const Icon(Icons.brightness_high),
                        ],
                      ),
                      Text('Brightness: ${(_continuousValue * 100).round()}%'),
                    ],
                  ),
                ),
                _buildExample(
                  'Temperature Range',
                  Column(
                    children: [
                      FPSlider(
                        type: FPSliderType.range,
                        value: _priceRange.start,
                        rangeValues: _priceRange,
                        min: 0,
                        max: 50,
                        divisions: 50,
                        onRangeChanged: (values) {
                          setState(() {
                            _priceRange = RangeValues(
                              values.start.clamp(0.0, 50.0),
                              values.end.clamp(0.0, 50.0),
                            );
                          });
                        },
                      ),
                      Text('Temperature: ${_priceRange.start.round()}°C - ${_priceRange.end.round()}°C'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: children,
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildSliderDemo(String label, Widget slider) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          slider,
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildExample(String title, Widget example) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          example,
        ],
      ),
    );
  }
} 