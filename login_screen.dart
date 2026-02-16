import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../auth/upload/upload_screen.dart';       
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: const EdgeInsets.all(20),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('Orator AI', style:
Theme.of(context).textTheme.headlineMedium),
const SizedBox(height: 20),
CustomTextField(label: 'Email'),
const SizedBox(height: 10),
CustomTextField(label: 'Password', isPassword: true),
const SizedBox(height: 20),
CustomButton(
text: 'Login',
onTap: () {
Navigator.push(
context,
MaterialPageRoute(builder: (_) => UploadScreen()),
);
},
)
],
),
),
);
}
}
