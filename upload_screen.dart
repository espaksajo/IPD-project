import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import 'package:orator_ai/widgets/custom_button.dart';
import 'package:orator_ai/features/auth/feedback/feedback_screen.dart';


class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  // 👇 DEFINE THE FUNCTION HERE
  Future<void> pickFile(BuildContext context) async {
    await FilePicker.platform.pickFiles(
      type: FileType.media,
    );

    // Navigate after picking file
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) =>  FeedbackScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(
          text: 'Upload Audio / Video',
          onTap: () => pickFile(context),
        ),
      ),
    );
  }
}
