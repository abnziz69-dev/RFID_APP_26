import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<SavedTagStructStruct> filterSavedTags(
  List<SavedTagStructStruct>? items,
  String? query,
) {
  if (items == null || items.isEmpty) {
    return [];
  }

  if (query == null || query.trim().isEmpty) {
    return items;
  }

  final q = query.toLowerCase().trim();

  return items.where((item) {
    final tag = (item.tagCode ?? '').toLowerCase();
    final name = (item.productName ?? '').toLowerCase();

    return tag.contains(q) || name.contains(q);
  }).toList();
}
