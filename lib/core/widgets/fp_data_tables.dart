import 'package:flutter/material.dart';
import '../../core/theme/spacing.dart';

// ============================================================================
// DATA TABLE
// ============================================================================

class FPDataTable extends StatelessWidget {
  final List<FPDataColumn> columns;
  final List<FPDataRow> rows;
  final bool sortColumnIndex;
  final bool sortAscending;
  final void Function(bool?)? onSelectAll;
  final double? dataRowHeight;
  final double? headingRowHeight;
  final double? horizontalMargin;
  final double? columnSpacing;
  final bool showCheckboxColumn;
  final bool showBottomBorder;
  final TableBorder? border;
  final BorderRadius? borderRadius;
  final Color? headingRowColor;
  final MaterialStateProperty<Color?>? dataRowColor;
  final MaterialStateProperty<Color?>? dataRowColorSelected;
  final double? dividerThickness;
  final bool showFirstLastButtons;
  final int? initialFirstRowIndex;
  final int? initialRowsPerPage;
  final List<int>? availableRowsPerPage;
  final ValueChanged<int>? onPageChanged;
  final ValueChanged<int>? onRowsPerPageChanged;
  final bool allowColumnResize;
  final bool allowColumnReorder;
  final ValueChanged<int>? onColumnResize;
  final ValueChanged<int>? onColumnReorder;

  const FPDataTable({
    super.key,
    required this.columns,
    required this.rows,
    this.sortColumnIndex = false,
    this.sortAscending = true,
    this.onSelectAll,
    this.dataRowHeight,
    this.headingRowHeight,
    this.horizontalMargin,
    this.columnSpacing,
    this.showCheckboxColumn = true,
    this.showBottomBorder = true,
    this.border,
    this.borderRadius,
    this.headingRowColor,
    this.dataRowColor,
    this.dataRowColorSelected,
    this.dividerThickness,
    this.showFirstLastButtons = false,
    this.initialFirstRowIndex,
    this.initialRowsPerPage,
    this.availableRowsPerPage,
    this.onPageChanged,
    this.onRowsPerPageChanged,
    this.allowColumnResize = false,
    this.allowColumnReorder = false,
    this.onColumnResize,
    this.onColumnReorder,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 1,
      shape: borderRadius != null
          ? RoundedRectangleBorder(borderRadius: borderRadius!)
          : null,
      child: DataTable(
        columns: columns.map((column) => DataColumn(
          label: column.label,
          tooltip: column.tooltip,
          numeric: column.numeric,
        )).toList(),
        rows: rows.map((row) => DataRow(
          cells: row.cells.map((cell) => DataCell(
            cell.child,
            placeholder: cell.placeholder,
            showEditIcon: cell.showEditIcon,
            onTap: cell.onTap,
          )).toList(),
          selected: row.selected,
          onSelectChanged: row.onSelectChanged,
          color: row.selected
              ? (dataRowColorSelected ?? MaterialStateProperty.all(colorScheme.primaryContainer))
              : (dataRowColor ?? null),
        )).toList(),
        sortColumnIndex: sortColumnIndex ? 0 : null,
        sortAscending: sortAscending,
        onSelectAll: onSelectAll,
        dataRowHeight: dataRowHeight,
        headingRowHeight: headingRowHeight,
        horizontalMargin: horizontalMargin ?? FPSpacing.lg,
        columnSpacing: columnSpacing ?? FPSpacing.lg,
        showCheckboxColumn: showCheckboxColumn,
        showBottomBorder: showBottomBorder,
        border: border,
        headingRowColor: MaterialStateProperty.all(
          headingRowColor ?? colorScheme.surfaceVariant,
        ),
        dataRowColor: dataRowColor,
        dividerThickness: dividerThickness,
      ),
    );
  }
}

class FPDataColumn {
  final Widget label;
  final String? tooltip;
  final bool numeric;

  const FPDataColumn({
    required this.label,
    this.tooltip,
    this.numeric = false,
  });
}

class FPDataRow {
  final List<FPDataCell> cells;
  final bool selected;
  final void Function(bool?)? onSelectChanged;

  const FPDataRow({
    required this.cells,
    this.selected = false,
    this.onSelectChanged,
  });
}

class FPDataCell {
  final Widget child;
  final bool placeholder;
  final bool showEditIcon;
  final VoidCallback? onTap;

  const FPDataCell({
    required this.child,
    this.placeholder = false,
    this.showEditIcon = false,
    this.onTap,
  });
}

// ============================================================================
// SORTABLE DATA TABLE
// ============================================================================

class FPSortableDataTable extends StatefulWidget {
  final List<FPSortableDataColumn> columns;
  final List<FPDataRow> rows;
  final void Function(bool?)? onSelectAll;
  final double? dataRowHeight;
  final double? headingRowHeight;
  final double? horizontalMargin;
  final double? columnSpacing;
  final bool showCheckboxColumn;
  final bool showBottomBorder;
  final TableBorder? border;
  final BorderRadius? borderRadius;
  final Color? headingRowColor;
  final MaterialStateProperty<Color?>? dataRowColor;
  final MaterialStateProperty<Color?>? dataRowColorSelected;
  final double? dividerThickness;

  const FPSortableDataTable({
    super.key,
    required this.columns,
    required this.rows,
    this.onSelectAll,
    this.dataRowHeight,
    this.headingRowHeight,
    this.horizontalMargin,
    this.columnSpacing,
    this.showCheckboxColumn = true,
    this.showBottomBorder = true,
    this.border,
    this.borderRadius,
    this.headingRowColor,
    this.dataRowColor,
    this.dataRowColorSelected,
    this.dividerThickness,
  });

  @override
  State<FPSortableDataTable> createState() => _FPSortableDataTableState();
}

class _FPSortableDataTableState extends State<FPSortableDataTable> {
  int? _sortColumnIndex;
  bool _sortAscending = true;

  void _onSort(int columnIndex, bool ascending) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 1,
      shape: widget.borderRadius != null
          ? RoundedRectangleBorder(borderRadius: widget.borderRadius!)
          : null,
      child: DataTable(
        columns: widget.columns.asMap().entries.map((entry) {
          final index = entry.key;
          final column = entry.value;
          return DataColumn(
            label: column.label,
            tooltip: column.tooltip,
            numeric: column.numeric,
            onSort: column.sortable ? (int columnIndex, bool ascending) => _onSort(columnIndex, ascending) : null,
          );
        }).toList(),
        rows: widget.rows.map((row) => DataRow(
          cells: row.cells.map((cell) => DataCell(
            cell.child,
            placeholder: cell.placeholder,
            showEditIcon: cell.showEditIcon,
            onTap: cell.onTap,
          )).toList(),
          selected: row.selected,
          onSelectChanged: row.onSelectChanged,
          color: row.selected
              ? (widget.dataRowColorSelected ?? MaterialStateProperty.all(colorScheme.primaryContainer))
              : (widget.dataRowColor ?? null),
        )).toList(),
        sortColumnIndex: _sortColumnIndex,
        sortAscending: _sortAscending,
        onSelectAll: widget.onSelectAll,
        dataRowHeight: widget.dataRowHeight,
        headingRowHeight: widget.headingRowHeight,
        horizontalMargin: widget.horizontalMargin ?? FPSpacing.lg,
        columnSpacing: widget.columnSpacing ?? FPSpacing.lg,
        showCheckboxColumn: widget.showCheckboxColumn,
        showBottomBorder: widget.showBottomBorder,
        border: widget.border,
        headingRowColor: MaterialStateProperty.all(
          widget.headingRowColor ?? colorScheme.surfaceVariant,
        ),
        dataRowColor: widget.dataRowColor,
        dividerThickness: widget.dividerThickness,
      ),
    );
  }
}

class FPSortableDataColumn {
  final Widget label;
  final String? tooltip;
  final bool numeric;
  final bool sortable;

  const FPSortableDataColumn({
    required this.label,
    this.tooltip,
    this.numeric = false,
    this.sortable = true,
  });
}

// ============================================================================
// SELECTABLE DATA TABLE
// ============================================================================

class FPSelectableDataTable extends StatefulWidget {
  final List<FPDataColumn> columns;
  final List<FPDataRow> rows;
  final void Function(Set<int>)? onSelectionChanged;
  final double? dataRowHeight;
  final double? headingRowHeight;
  final double? horizontalMargin;
  final double? columnSpacing;
  final bool showCheckboxColumn;
  final bool showBottomBorder;
  final TableBorder? border;
  final BorderRadius? borderRadius;
  final Color? headingRowColor;
  final MaterialStateProperty<Color?>? dataRowColor;
  final MaterialStateProperty<Color?>? dataRowColorSelected;
  final double? dividerThickness;

  const FPSelectableDataTable({
    super.key,
    required this.columns,
    required this.rows,
    this.onSelectionChanged,
    this.dataRowHeight,
    this.headingRowHeight,
    this.horizontalMargin,
    this.columnSpacing,
    this.showCheckboxColumn = true,
    this.showBottomBorder = true,
    this.border,
    this.borderRadius,
    this.headingRowColor,
    this.dataRowColor,
    this.dataRowColorSelected,
    this.dividerThickness,
  });

  @override
  State<FPSelectableDataTable> createState() => _FPSelectableDataTableState();
}

class _FPSelectableDataTableState extends State<FPSelectableDataTable> {
  final Set<int> _selectedRows = {};

  void _onSelectAll(bool? selected) {
    setState(() {
      if (selected == true) {
        _selectedRows.addAll(List.generate(widget.rows.length, (index) => index));
      } else {
        _selectedRows.clear();
      }
    });
    widget.onSelectionChanged?.call(_selectedRows);
  }

  void _onSelectRow(int index, bool? selected) {
    setState(() {
      if (selected == true) {
        _selectedRows.add(index);
      } else {
        _selectedRows.remove(index);
      }
    });
    widget.onSelectionChanged?.call(_selectedRows);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 1,
      shape: widget.borderRadius != null
          ? RoundedRectangleBorder(borderRadius: widget.borderRadius!)
          : null,
      child: DataTable(
        columns: widget.columns.map((column) => DataColumn(
          label: column.label,
          tooltip: column.tooltip,
          numeric: column.numeric,
        )).toList(),
        rows: widget.rows.asMap().entries.map((entry) {
          final index = entry.key;
          final row = entry.value;
          final isSelected = _selectedRows.contains(index);
          
          return DataRow(
            cells: row.cells.map((cell) => DataCell(
              cell.child,
              placeholder: cell.placeholder,
              showEditIcon: cell.showEditIcon,
              onTap: cell.onTap,
            )).toList(),
            selected: isSelected,
            onSelectChanged: (selected) => _onSelectRow(index, selected),
            color: isSelected
                ? (widget.dataRowColorSelected ?? MaterialStateProperty.all(colorScheme.primaryContainer))
                : (widget.dataRowColor ?? null),
          );
        }).toList(),
        onSelectAll: _onSelectAll,
        dataRowHeight: widget.dataRowHeight,
        headingRowHeight: widget.headingRowHeight,
        horizontalMargin: widget.horizontalMargin ?? FPSpacing.lg,
        columnSpacing: widget.columnSpacing ?? FPSpacing.lg,
        showCheckboxColumn: widget.showCheckboxColumn,
        showBottomBorder: widget.showBottomBorder,
        border: widget.border,
        headingRowColor: MaterialStateProperty.all(
          widget.headingRowColor ?? colorScheme.surfaceVariant,
        ),
        dataRowColor: widget.dataRowColor,
        dividerThickness: widget.dividerThickness,
      ),
    );
  }
}

// ============================================================================
// DATA TABLE HELPERS
// ============================================================================

class FPDataTableHelpers {
  static FPDataColumn createColumn({
    required Widget label,
    String? tooltip,
    bool numeric = false,
  }) {
    return FPDataColumn(
      label: label,
      tooltip: tooltip,
      numeric: numeric,
    );
  }

  static FPSortableDataColumn createSortableColumn({
    required Widget label,
    String? tooltip,
    bool numeric = false,
    bool sortable = true,
  }) {
    return FPSortableDataColumn(
      label: label,
      tooltip: tooltip,
      numeric: numeric,
      sortable: sortable,
    );
  }

  static FPDataRow createRow({
    required List<FPDataCell> cells,
    bool selected = false,
    void Function(bool?)? onSelectChanged,
  }) {
    return FPDataRow(
      cells: cells,
      selected: selected,
      onSelectChanged: onSelectChanged,
    );
  }

  static FPDataCell createCell({
    required Widget child,
    bool placeholder = false,
    bool showEditIcon = false,
    VoidCallback? onTap,
  }) {
    return FPDataCell(
      child: child,
      placeholder: placeholder,
      showEditIcon: showEditIcon,
      onTap: onTap,
    );
  }

  static FPDataCell createTextCell({
    required String text,
    TextStyle? style,
    bool placeholder = false,
    bool showEditIcon = false,
    VoidCallback? onTap,
  }) {
    return FPDataCell(
      child: Text(text, style: style),
      placeholder: placeholder,
      showEditIcon: showEditIcon,
      onTap: onTap,
    );
  }

  static FPDataCell createIconCell({
    required IconData icon,
    Color? color,
    double? size,
    bool placeholder = false,
    bool showEditIcon = false,
    VoidCallback? onTap,
  }) {
    return FPDataCell(
      child: Icon(icon, color: color, size: size),
      placeholder: placeholder,
      showEditIcon: showEditIcon,
      onTap: onTap,
    );
  }

  static FPDataCell createActionCell({
    required List<Widget> actions,
    bool placeholder = false,
    bool showEditIcon = false,
    VoidCallback? onTap,
  }) {
    return FPDataCell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: actions.map((action) => Padding(
          padding: const EdgeInsets.only(left: 4),
          child: action,
        )).toList(),
      ),
      placeholder: placeholder,
      showEditIcon: showEditIcon,
      onTap: onTap,
    );
  }
} 