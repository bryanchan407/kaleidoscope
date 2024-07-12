// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports other custom actions
// Imports custom functions

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
                            style: pw.TextStyle(
                                font: font,
                                color: PdfColors.green900,
                                fontSize: 12)),
                        pw.Text(item.subtitle,
                            style: pw.TextStyle(font: font, fontSize: 10)),
                        pw.Text(item.description,
                            style: pw.TextStyle(
                                font: font,
                                color: PdfColors.grey800,
                                fontSize: 8)),
                        pw.Divider()
                      ]))
              .toList(),
        ));
  }

  pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return [
          pw.Column(children: [
            pw.Text(fullName!, style: pw.TextStyle(font: font, fontSize: 22)),
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
                    style: pw.TextStyle(font: font, fontSize: 18))),
          ),
          buildRow(classes),
          pw.Container(
            child: pw.Header(
                level: 1,
                child: pw.Text('Projects',
                    style: pw.TextStyle(font: font, fontSize: 18))),
          ),
          buildRow(personalProjects),
          pw.Container(
            child: pw.Header(
                level: 1,
                child: pw.Text('Extracurriculars',
                    style: pw.TextStyle(font: font, fontSize: 18))),
          ),
          buildRow(athletics),
          buildRow(performingArts),
          buildRow(clubs),
          buildRow(communityService),
          pw.Container(
            child: pw.Header(
                level: 1,
                child: pw.Text('Awards',
                    style: pw.TextStyle(font: font, fontSize: 18))),
          ),
          buildRow(awards)
        ]; // Center
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
