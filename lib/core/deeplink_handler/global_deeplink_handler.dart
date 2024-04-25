
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_module/core/deeplink_handler/deeplink_constants.dart';
import 'package:test_module/presentation/pdfViewer/AppPdfViewerScreen.dart';

Widget? getRoute(String deeplink) {
  try{
    final data = jsonDecode(deeplink);
    return getScreen(data);
  }catch(e){
    return Container(color: Colors.white,);
  }
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