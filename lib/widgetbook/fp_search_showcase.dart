import 'package:flutter/material.dart';
import '../core/widgets/fp_search.dart';

class FPSearchShowcase extends StatefulWidget {
  const FPSearchShowcase({super.key});

  @override
  State<FPSearchShowcase> createState() => _FPSearchShowcaseState();
}

class _FPSearchShowcaseState extends State<FPSearchShowcase> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _filterController = TextEditingController();
  final TextEditingController _customController = TextEditingController();
  String _searchQuery = '';
  List<String> _searchResults = [];

  final List<String> _sampleData = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Kiwi',
    'Lemon',
    'Mango',
    'Orange',
    'Papaya',
    'Quince',
    'Raspberry',
    'Strawberry',
    'Tangerine',
    'Ugli fruit',
    'Watermelon',
  ];

  @override
  void initState() {
    super.initState();
    _searchResults = _sampleData;
  }

  void _performSearch(String query) {
    setState(() {
      _searchQuery = query;
      if (query.isEmpty) {
        _searchResults = _sampleData;
      } else {
        _searchResults = _sampleData
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _filterController.dispose();
    _customController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Search Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Basic Search Bar',
              [
                _buildSearchDemo(
                  'Default Search',
                  FPSearchBar(
                    hintText: 'Search...',
                    onChanged: _performSearch,
                    controller: _searchController,
                  ),
                ),
                _buildSearchDemo(
                  'With Custom Hint',
                  FPSearchBar(
                    hintText: 'Search for fruits...',
                    onChanged: (query) {},
                  ),
                ),
                _buildSearchDemo(
                  'Disabled Search',
                  FPSearchBar(
                    hintText: 'Disabled search bar',
                    enabled: false,
                  ),
                ),
              ],
            ),
            _buildSection(
              'Search with Results',
              [
                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FPSearchBar(
                        hintText: 'Search fruits...',
                        onChanged: _performSearch,
                        controller: _searchController,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Results (${_searchResults.length}):',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          itemCount: _searchResults.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(_searchResults[index]),
                              leading: const Icon(Icons.food_bank),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'Search with Custom Icons',
              [
                _buildSearchDemo(
                  'Custom Leading Icon',
                  FPSearchBar(
                    hintText: 'Search with custom icon',
                    leading: const Icon(Icons.person_search),
                    onChanged: (query) {},
                  ),
                ),
                _buildSearchDemo(
                  'Custom Trailing Icon',
                  FPSearchBar(
                    hintText: 'Search with filter',
                    trailing: IconButton(
                      icon: const Icon(Icons.filter_list),
                      onPressed: () {},
                    ),
                    onChanged: (query) {},
                  ),
                ),
                _buildSearchDemo(
                  'Multiple Actions',
                  FPSearchBar(
                    hintText: 'Search with actions',
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.mic),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.camera_alt),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    onChanged: (query) {},
                  ),
                ),
              ],
            ),
            _buildSection(
              'Search with Custom Styling',
              [
                _buildSearchDemo(
                  'Custom Colors',
                  FPSearchBar(
                    hintText: 'Custom colored search',
                    backgroundColor: Colors.blue.shade50,
                    onChanged: (query) {},
                  ),
                ),
                _buildSearchDemo(
                  'Custom Shape',
                  FPSearchBar(
                    hintText: 'Rounded search bar',
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    onChanged: (query) {},
                  ),
                ),
                _buildSearchDemo(
                  'With Elevation',
                  FPSearchBar(
                    hintText: 'Elevated search bar',
                    elevation: 8,
                    onChanged: (query) {},
                  ),
                ),
              ],
            ),
            _buildSection(
              'Search with Suggestions',
              [
                _buildSearchDemo(
                  'With Suggestions',
                  Column(
                    children: [
                      FPSearchBar(
                        hintText: 'Search with suggestions...',
                        onChanged: (query) {},
                        controller: _customController,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Suggestions:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Wrap(
                              spacing: 4,
                              children: [
                                _buildSuggestionChip('Apple'),
                                _buildSuggestionChip('Banana'),
                                _buildSuggestionChip('Cherry'),
                                _buildSuggestionChip('Date'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'Search in Different Contexts',
              [
                _buildExample(
                  'App Bar Search',
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.arrow_back),
                            const SizedBox(width: 16),
                            Expanded(
                              child: FPSearchBar(
                                hintText: 'Search in app...',
                                onChanged: (query) {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                _buildExample(
                  'Filter Search',
                  Column(
                    children: [
                      FPSearchBar(
                        hintText: 'Filter items...',
                        onChanged: (query) {},
                        controller: _filterController,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          FilterChip(
                            label: const Text('Fruits'),
                            selected: true,
                            onSelected: (selected) {},
                          ),
                          const SizedBox(width: 8),
                          FilterChip(
                            label: const Text('Vegetables'),
                            selected: false,
                            onSelected: (selected) {},
                          ),
                        ],
                      ),
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

  Widget _buildSearchDemo(String label, Widget searchBar) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchBar,
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

  Widget _buildSuggestionChip(String text) {
    return ActionChip(
      label: Text(text),
      onPressed: () {
        _customController.text = text;
      },
    );
  }
} 