import 'package:flutter/material.dart';

var p = () => {
      'InkWell': (props) => InkWell(
            key: props['key'],
            child: props['child'],
            onTap: props['onTap'],
            onDoubleTap: props['onDoubleTap'],
            onLongPress: props['onLongPress'],
            onTapDown: props['onTapDown'],
            onTapCancel: props['onTapCancel'],
            onHighlightChanged: props['onHighlightChanged'],
            onHover: props['onHover'],
            mouseCursor: props['mouseCursor'],
            focusColor: props['focusColor'],
            hoverColor: props['hoverColor'],
            highlightColor: props['highlightColor'],
            overlayColor: props['overlayColor'],
            splashColor: props['splashColor'],
            splashFactory: props['splashFactory'],
            radius: props['radius'],
            borderRadius: props['borderRadius'],
            customBorder: props['customBorder'],
            enableFeedback: props['enableFeedback'] ?? true,
            excludeFromSemantics: props['excludeFromSemantics'] ?? false,
            focusNode: props['focusNode'],
            canRequestFocus: props['canRequestFocus'] ?? true,
            onFocusChange: props['onFocusChange'],
            autofocus: props['autofocus'] ?? false,
          ),
      'OutlinedButton':(props) => OutlinedButton(
            key: props['key'],
            onPressed: props['onPressed']!,
            child: props['child']!,
            onLongPress: props['onLongPress'],
            style: props['style'],
            focusNode: props['focusNode'],
            autofocus: props['autofocus'] ?? false,
            clipBehavior: props['clipBehavior'] ?? Clip.none,
      ),
      'Duration': (props) => Duration(
            days: props['days'] ?? 0,
            hours: props['hours'] ?? 0,
            minutes: props['minutes'] ?? 0,
            seconds: props['seconds'] ?? 0,
            milliseconds: props['milliseconds'] ?? 0,
            microseconds: props['microseconds'] ?? 0,
          ),
      'ElevatedButton': (props) => ElevatedButton(
            key: props['key'],
            child: props['child'],
            onPressed: props['onPressed'],
            style: props['style'],
            clipBehavior: props['clipBehavior']?? Clip.none,
            onLongPress: props['onLongPress'],
            focusNode: props['focusNode'],
            autofocus: props['autofocus']?? false,
      ),
      'BorderRadius.circular': (props) => BorderRadius.circular(
            props['pa'][0]?.toDouble(),
      ),
      'SliverChildBuilderDelegate': (props) => SliverChildBuilderDelegate(
            props['pa'][0],
            findChildIndexCallback: props['findChildIndexCallback'],
            childCount: props['childCount'],
            addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
            addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
            addSemanticIndexes: props['addSemanticIndexes'] ?? true,
            semanticIndexCallback: props['semanticIndexCallback'] ??
                    (Widget _,int index) => index,
            semanticIndexOffset: props['semanticIndexOffset'] ?? 0,
      ),
      'SliverChildListDelegate': (props) => SliverChildListDelegate(
            props['pa'][0],
            addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
            addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
            addSemanticIndexes: props['addSemanticIndexes'] ?? true,
            semanticIndexCallback: props['semanticIndexCallback'] ??
                    (Widget _,int index) => index,
            semanticIndexOffset: props['semanticIndexOffset'] ?? 0,
      ),
      'TabController': (props) => TabController(
          length: props['length'],
          vsync: props['vsync'] ?? ScrollableState(),
          initialIndex: props['initialIndex'] ?? 0),
      'TextButton': (props) => TextButton(
            key: props['key'],
            onPressed: props['onPressed'],
            onLongPress: props['onLongPress'],
            style: props['style'],
            focusNode: props['focusNode'],
            autofocus: props['autofocus'] ?? false,
            clipBehavior: props['clipBehavior'] ?? Clip.none,
            child: props['child'],
      ),
      // 往下补充Widget映射关系
    };