// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:path_provider/path_provider.dart';
// import 'package:http/http.dart' as http;
// // ignore: avoid_web_libraries_in_flutter
// import 'dart:html' as html;

// class Resume extends StatelessWidget {
//   const Resume({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: downloadFileFromBrowser, child: Text("Download Resume"));
//     // return AnimatedIconButton(
//     //   iconData: Icons.call,
//     //   // onTap: () {},
//     //   onTap: downloadAsset("assets/Resume.pdf"),
//     // );
//   }
// }

// getPdf() async {
//   return PDFViewer(document: await PDFDocument.fromAsset('assets/Resume.pdf'));
// }

// downloadAsset() async {
//   final bytes = await rootBundle.load("assets/Resume.pdf");
//   final directory = await getApplicationDocumentsDirectory();
//   final file = File('${directory.path}"/assets/Resume.pdf"');
//   await file.writeAsBytes(bytes.buffer.asUint8List(), flush: true);
//   return file;
// }

// downloadFileFromBrowser() async {
//   final file = await rootBundle.load("assets/Resume.pdf");
//   final blob = html.Blob([file]);
//   final url = html.Url.createObjectUrlFromBlob(blob);
//   final anchor = html.document.createElement('a') as html.AnchorElement
//     ..href = url
//     ..style.display = "none"
//     ..download ="Resume.pdf" ;
//   html.document.body!.children.add(anchor);
//   anchor.click();
//   html.document.body!.children.remove(anchor);
//   html.Url.revokeObjectUrl(url);
// }

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path_provider/path_provider.dart';

// class Resume extends StatefulWidget {
//   const Resume({super.key});

//   @override
//   State<Resume> createState() => _ResumeState();
// }

// class _ResumeState extends State<Resume> {
//   @override
//   Widget build(BuildContext context) {
//     return Placeholder(
//       child: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               downloadAndOpenPDF(context);
//             },
//             child: Text('Download PDF'),
//           ),
//           PDFView(
//             filePath: 'sandhiya_resume.pdf',
//           ),
//         ],
//       ),
//     );
//   }

//   // void downloadPDF(String pdfUrl) async {
//   //   if (await canLaunch(pdfUrl)) {
//   //     await launch(pdfUrl);
//   //   } else {
//   //     throw 'Could not launch $pdfUrl';
//   //   }
//   // }

//   void downloadAndOpenPDF(BuildContext context) async {
//     final url = 'sandhiya_resume.pdf';
//     final filename = 'sandhiya_resume.pdf';

//     // Get the directory for storing the PDF file
//     final directory = await getTemporaryDirectory();
//     final filePath = '${directory.path}/$filename';

//     // Download the PDF file
//     final response = await HttpClient().getUrl(Uri.parse(url));
//     final file = File(filePath);
//     await file.writeAsBytes((await response.close()) as List<int>);

//     // Open the PDF file using the flutter_pdfview package
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => PDFView(filePath: filePath),
//       ),
//     );
//   }
// }
