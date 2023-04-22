import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:docx_template/docx_template.dart';

///
/// Read file template.docx, produce it and save
///
void main() async {
  // Load template bytes from an asset
  final ByteData byteData = await rootBundle.load('assets/template.docx');
  final Uint8List templateBytes = byteData.buffer.asUint8List();

  // Create a DocxTemplate instance from template bytes
  final DocxTemplate docx = await DocxTemplate.fromBytes(templateBytes);

  // Define the data to be replaced in the template
  final data = {
    'number': '4',
    'face': 'Service Agreement',
    'zakaz': 'April 22, 2023'
  };

  // Generate the document with the replaced data
  final List<int>? generatedDocBytes = await docx.generate(data as Content);

  // Save the generated document to a file
  final String filePath = 'assets/documents/document.docx';
  final File generatedFile = File(filePath);
  await generatedFile.writeAsBytes(generatedDocBytes!);
}

