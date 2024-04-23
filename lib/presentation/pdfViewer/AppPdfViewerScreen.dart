import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AppPDFViewerScreen extends StatefulWidget {
  final String url;

  const AppPDFViewerScreen({super.key, required this.url});

  @override
  State<AppPDFViewerScreen> createState() => _AppPDFViewerScreenState();
}

class _AppPDFViewerScreenState extends State<AppPDFViewerScreen> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: _appBarWidget(),
      body: SfPdfViewer.network(
        widget.url,
        key: _pdfViewerKey,
      ),
    );
  }


  _appBarWidget() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: InkWell(
          onTap: () {
            SystemNavigator.pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          )),
      title: const Text('STATEMENT',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black,fontFamily: 'Figtree'),),
    );
  }
}
