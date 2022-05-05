import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({
    Key? key,
    required this.isRow,
    required this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.mainAxisAlignmentRow = MainAxisAlignment.start,
    this.mainAxisAlignmentColumn = MainAxisAlignment.start,
    this.crossAxisAlignmentRow = CrossAxisAlignment.center,
    this.crossAxisAlignmentColumn = CrossAxisAlignment.center,
    this.mainAxisSizeRow = MainAxisSize.max,
    this.mainAxisSizeColumn = MainAxisSize.max,
    this.textBaselineColumn,
    this.textBaselineRow,
    this.textDirectionColumn,
    this.textDirectionRow,
    this.verticalDirectionColumn = VerticalDirection.down,
    this.verticalDirectionRow = VerticalDirection.down,
  }) : super(key: key);

  final bool isRow;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignmentColumn, mainAxisAlignmentRow;
  final CrossAxisAlignment crossAxisAlignmentColumn, crossAxisAlignmentRow;
  final MainAxisSize mainAxisSizeColumn, mainAxisSizeRow;
  final TextBaseline? textBaseline, textBaselineColumn, textBaselineRow;
  final TextDirection? textDirection, textDirectionColumn, textDirectionRow;
  final VerticalDirection verticalDirectionColumn, verticalDirectionRow;

  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final VerticalDirection? verticalDirection;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 350),
      child: (isRow)
          ? Row(
              verticalDirection: verticalDirection ?? verticalDirectionRow,
              textBaseline: textBaseline ?? textBaselineRow,
              textDirection: textDirection ?? textDirectionRow,
              mainAxisSize: mainAxisSize ?? mainAxisSizeRow,
              mainAxisAlignment: mainAxisAlignment ?? mainAxisAlignmentRow,
              crossAxisAlignment: crossAxisAlignment ?? crossAxisAlignmentRow,
              children: children,
            )
          : Column(
              verticalDirection: verticalDirection ?? verticalDirectionColumn,
              textBaseline: textBaseline ?? textBaselineColumn,
              textDirection: textDirection ?? textDirectionColumn,
              mainAxisSize: mainAxisSize ?? mainAxisSizeColumn,
              mainAxisAlignment: mainAxisAlignment ?? mainAxisAlignmentColumn,
              crossAxisAlignment:
                  crossAxisAlignment ?? crossAxisAlignmentColumn,
              children: children,
            ),
    );
  }
}
