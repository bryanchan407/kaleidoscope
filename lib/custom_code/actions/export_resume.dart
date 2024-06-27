// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
// Imports other custom actions
// Imports custom functions
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<FFUploadedFile>? exportResume(
    List<EcStruct>? classes,
    List<EcStruct>? clubs,
    List<EcStruct>? communityService,
    List<EcStruct>? athletics,
    List<EcStruct>? personalProjects,
    List<EcStruct>? awards,
    List<EcStruct>? performingArts,
    String? phoneNumber,
    String? fullName,
    String? email,
    String? description,
    String? school,
    String? major,
    String? city,
    String? state) async {
  final pdf = pw.Document();

  final font = await PdfGoogleFonts.nunitoExtraLight();

  pw.Widget buildRow(List<EcStruct>? _list) {
    return pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: _list!
              .map((item) => pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(item.title,
                            style: pw.TextStyle(font: font, fontSize: 14)),
                        pw.Text(item.subtitle,
                            style: pw.TextStyle(font: font, fontSize: 12)),
                        pw.Text(item.description,
                            style: pw.TextStyle(font: font, fontSize: 10)),
                        pw.Divider()
                      ]))
              .toList(),
        ));
  }

  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(children: [
          pw.Column(children: [
            pw.Text(fullName!, style: pw.TextStyle(font: font, fontSize: 24)),
            pw.Text(phoneNumber!,
                style: pw.TextStyle(font: font, fontSize: 16)),
            pw.Text(email!, style: pw.TextStyle(font: font, fontSize: 16)),
            pw.Text('$state',
                style: pw.TextStyle(
                  font: font,
                  fontSize: 14,
                )),
            pw.Text('$school',
                style: pw.TextStyle(
                  font: font,
                  fontSize: 14,
                )),
            pw.SizedBox(width: 15, height: 15),
            pw.Text(description!, style: pw.TextStyle(font: font, fontSize: 12))
          ]),
          pw.Container(
            child: pw.Header(
                level: 1,
                child: pw.Text('Education',
                    style: pw.TextStyle(font: font, fontSize: 20))),
          ),
          buildRow(classes),
          pw.Container(
            child: pw.Header(
                level: 1,
                child: pw.Text('Projects',
                    style: pw.TextStyle(font: font, fontSize: 20))),
          ),
          buildRow(personalProjects),
          pw.Container(
            child: pw.Header(
                level: 1,
                child: pw.Text('Extracurriculars',
                    style: pw.TextStyle(font: font, fontSize: 20))),
          ),
          buildRow(athletics),
          buildRow(performingArts),
          buildRow(clubs),
          buildRow(communityService),
          pw.Container(
            child: pw.Header(
                level: 1,
                child: pw.Text('Awards',
                    style: pw.TextStyle(font: font, fontSize: 20))),
          ),
          buildRow(awards)
        ]); // Center
      })); // Page

  // final output = await getTemporaryDirectory();
  // final file = File("${output.path}/resume.pdf");
  // await file.writeAsBytes(await pdf.save());
  final Uint8List pdfBytes = await pdf.save();
  final uploadedFile = FFUploadedFile(bytes: pdfBytes, name: 'example.pdf');
  return uploadedFile;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
