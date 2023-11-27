import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? cutTemp(String? temp) {
  // extract first 2 characters of a string
  if (temp == null || temp.length < 2) {
    return null;
  }
  return temp.substring(0, 2);
}

String? cutUrl(String? url) {
  // extract first 2 characters of a string
  if (url == null || url.length < 4) {
    return null;
  }
  return url.substring(0, 4);
}

String? replaceHTML(String? html) {
  // replace html of a string
  if (html == null) {
    return null;
  }
  // Replace <br> tags with new line characters
  String newString = html.replaceAll('<br>', '\n');
  // Remove all other HTML tags
  newString = newString.replaceAll(RegExp(r'<[^>]*>'), '');
  return newString;
}

bool moreThanFifteen(DateTime cache) {
  DateTime time1 = DateTime.now();

  Duration difference = cache.difference(time1).abs();

  if (difference.inMinutes > 15) {
    return true;
  } else {
    return false;
  }
}
