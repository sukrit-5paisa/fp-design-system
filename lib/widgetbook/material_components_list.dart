/// Comprehensive list of Material Design 3 components
/// Based on https://m3.material.io/components
class MaterialDesign3Components {
  /// Private constructor to prevent instantiation
  const MaterialDesign3Components._();

  /// 1. BUTTONS
  static const List<String> buttons = [
    'Elevated Button',
    'Filled Button',
    'Filled Tonal Button',
    'Outlined Button',
    'Text Button',
    'Icon Button',
    'Segmented Buttons',
    'Extended FAB',
  ];

  /// 2. CARDS
  static const List<String> cards = [
    'Elevated Card',
    'Filled Card',
    'Outlined Card',
  ];

  /// 3. CHIPS
  static const List<String> chips = [
    'Assist Chips',
    'Filter Chips',
    'Input Chips',
    'Suggestion Chips',
  ];

  /// 4. TEXT FIELDS
  static const List<String> textFields = [
    'Filled Text Field',
    'Outlined Text Field',
    'Text Field with Error',
    'Text Field with Helper Text',
    'Text Field with Character Counter',
    'Text Field with Prefix/Suffix',
  ];

  /// 5. SELECTION CONTROLS
  static const List<String> selectionControls = [
    'Checkboxes',
    'Radio Buttons',
    'Switches',
  ];

  /// 6. SLIDERS
  static const List<String> sliders = [
    'Continuous Slider',
    'Discrete Slider',
    'Range Slider',
  ];

  /// 7. NAVIGATION
  static const List<String> navigation = [
    'Bottom Navigation Bar',
    'Navigation Drawer',
    'Navigation Rail',
    'Tabs',
    'Top App Bar',
    'Bottom App Bar',
  ];

  /// 8. DIALOGS
  static const List<String> dialogs = [
    'Alert Dialog',
    'Simple Dialog',
    'Confirmation Dialog',
    'Full-Screen Dialog',
  ];

  /// 9. BOTTOM SHEETS
  static const List<String> bottomSheets = [
    'Modal Bottom Sheet',
    'Standard Bottom Sheet',
    'Persistent Bottom Sheet',
  ];

  /// 10. SNACKBARS
  static const List<String> snackbars = [
    'Snackbar',
    'Snackbar with Action',
  ];

  /// 11. PROGRESS INDICATORS
  static const List<String> progressIndicators = [
    'Linear Progress Indicator',
    'Circular Progress Indicator',
    'Determinate Progress',
    'Indeterminate Progress',
  ];

  /// 12. DIVIDERS
  static const List<String> dividers = [
    'Divider',
    'Vertical Divider',
  ];

  /// 13. LISTS
  static const List<String> lists = [
    'List Tile',
    'List with Avatars',
    'List with Icons',
    'List with Actions',
    'List with Checkboxes',
    'List with Radio Buttons',
    'List with Switches',
  ];

  /// 14. MENUS
  static const List<String> menus = [
    'Dropdown Menu',
    'Exposed Dropdown Menu',
    'Menu',
    'Context Menu',
  ];

  /// 15. TOOLTIPS
  static const List<String> tooltips = [
    'Tooltip',
    'Rich Tooltip',
  ];

  /// 16. DATE PICKERS
  static const List<String> datePickers = [
    'Date Picker',
    'Date Range Picker',
  ];

  /// 17. TIME PICKERS
  static const List<String> timePickers = [
    'Time Picker',
    'Clock',
  ];

  /// 18. SEARCH
  static const List<String> search = [
    'Search Bar',
    'Search Suggestions',
  ];

  /// 19. DATA TABLES
  static const List<String> dataTables = [
    'Data Table',
    'Sortable Data Table',
    'Selectable Data Table',
  ];

  /// 20. BANNERS
  static const List<String> banners = [
    'Banner',
    'Banner with Actions',
  ];

  /// 21. FAB
  static const List<String> fab = [
    'Floating Action Button',
    'Small FAB',
    'Large FAB',
    'Extended FAB',
  ];

  /// 22. SHEETS
  static const List<String> sheets = [
    'Draggable Sheet',
    'Side Sheet',
    'Standard Sheet',
  ];

  /// 23. EXPANSION PANELS
  static const List<String> expansionPanels = [
    'Expansion Panel',
    'Expansion Panel List',
  ];

  /// 24. BOTTOM SHEETS (Detailed)
  static const List<String> bottomSheetsDetailed = [
    'Modal Bottom Sheet',
    'Standard Bottom Sheet',
    'Persistent Bottom Sheet',
    'Draggable Bottom Sheet',
  ];

  /// 25. TOP APP BAR (Detailed)
  static const List<String> topAppBar = [
    'Center-Aligned Top App Bar',
    'Small Top App Bar',
    'Medium Top App Bar',
    'Large Top App Bar',
    'Prominent Top App Bar',
  ];

  /// 26. BOTTOM APP BAR (Detailed)
  static const List<String> bottomAppBar = [
    'Bottom App Bar with FAB',
    'Bottom App Bar with Actions',
  ];

  /// 27. NAVIGATION DRAWER (Detailed)
  static const List<String> navigationDrawer = [
    'Standard Navigation Drawer',
    'Modal Navigation Drawer',
    'Dismissible Navigation Drawer',
  ];

  /// 28. NAVIGATION RAIL (Detailed)
  static const List<String> navigationRail = [
    'Standard Navigation Rail',
    'Navigation Rail with Labels',
    'Navigation Rail with Badges',
  ];

  /// 29. TABS (Detailed)
  static const List<String> tabs = [
    'Primary Tabs',
    'Secondary Tabs',
    'Tabs with Icons',
    'Tabs with Labels and Icons',
  ];

  /// 30. CHIPS (Detailed)
  static const List<String> chipsDetailed = [
    'Assist Chips',
    'Filter Chips',
    'Input Chips',
    'Suggestion Chips',
    'Choice Chips',
  ];

  /// Get all components as a map
  static Map<String, List<String>> getAllComponents() {
    return {
      'Buttons': buttons,
      'Cards': cards,
      'Chips': chips,
      'Text Fields': textFields,
      'Selection Controls': selectionControls,
      'Sliders': sliders,
      'Navigation': navigation,
      'Dialogs': dialogs,
      'Bottom Sheets': bottomSheets,
      'Snackbars': snackbars,
      'Progress Indicators': progressIndicators,
      'Dividers': dividers,
      'Lists': lists,
      'Menus': menus,
      'Tooltips': tooltips,
      'Date Pickers': datePickers,
      'Time Pickers': timePickers,
      'Search': search,
      'Data Tables': dataTables,
      'Banners': banners,
      'FAB': fab,
      'Sheets': sheets,
      'Expansion Panels': expansionPanels,
      'Bottom Sheets (Detailed)': bottomSheetsDetailed,
      'Top App Bar (Detailed)': topAppBar,
      'Bottom App Bar (Detailed)': bottomAppBar,
      'Navigation Drawer (Detailed)': navigationDrawer,
      'Navigation Rail (Detailed)': navigationRail,
      'Tabs (Detailed)': tabs,
      'Chips (Detailed)': chipsDetailed,
    };
  }

  /// Get total count of all components
  static int getTotalComponentCount() {
    int count = 0;
    getAllComponents().values.forEach((components) => count += components.length);
    return count;
  }

  /// Get all component names as a flat list
  static List<String> getAllComponentNames() {
    List<String> allComponents = [];
    getAllComponents().values.forEach((components) => allComponents.addAll(components));
    return allComponents;
  }
} 