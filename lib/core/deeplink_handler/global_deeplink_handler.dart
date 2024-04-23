
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_module/core/deeplink_handler/deeplink_constants.dart';
import 'package:test_module/presentation/pdfViewer/AppPdfViewerScreen.dart';

Widget? getRoute(String deeplink) {
  final data = jsonDecode(deeplink);
  return getScreen(data);
}


Widget? getScreen(dynamic uri) {
  final data = uri[kData];
  switch(data[kScreenName]) {
    case kPDFViewScreen: {
      final url = data[kURL];
      if(url!=null && url.isNotEmpty == true) {
        return AppPDFViewerScreen(url:url,);
      }
    }
    default: return null;
  }
}