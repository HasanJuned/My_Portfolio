import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_portfolioo/app/constants/size.dart';
import 'package:my_portfolioo/widgets/custom_text_field.dart';
import 'package:my_portfolioo/utility/colors.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  ContactSection({
    super.key,
    required this.getInputBorder,
  });

  final OutlineInputBorder getInputBorder;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();


  Future<void> openEmailApp(String name, String email, String message) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'softenghasan25@gmail.com',
      query: 'subject=New Email from Portfolio&body=Name: $name\nEmail: $email\nMessage:\n$message',
    );
    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
      //print('Could not open email client');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: double.maxFinite,
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            'Contact',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= kMinDesktopWidth) {
                return buildNameAndEmailFieldDesktop();
              }
              return buildNameAndEmailFieldMobile();
            }),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              children: [
                CustomTextField(
                  controller: _messageController,
                  getInputBorder: getInputBorder,
                  hintText: 'Your Message',
                  maxLine: 20,
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent),
                    onPressed: () {
                      final name = _nameController.text.trim();
                      final email = _emailController.text.trim();
                      final message = _messageController.text.trim();

                      if (name.isEmpty || email.isEmpty || message.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Please fill out all fields')),
                        );
                        return;
                      }

                      openEmailApp(name, email, message);
                    },
                    child: const Text(
                      'Send',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 300),
                  child: const Divider(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  alignment: WrapAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          js.context.callMethod('open', [
                            'https://www.linkedin.com/in/hasan-ahmad-502391204/'
                          ]);
                        },
                        child: Image.asset(
                          'assets/images/linkedin.png',
                          width: 28,
                        )),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://github.com/HasanJuned']);
                      },
                      child: Image.asset(
                        'assets/images/github.png',
                        width: 28,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildNameAndEmailFieldDesktop() {
    return Row(
      children: [
        Expanded(
            child: CustomTextField(
          controller: _nameController,
          getInputBorder: getInputBorder,
          hintText: 'Your Name',
        )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: CustomTextField(
          controller: _emailController,
          getInputBorder: getInputBorder,
          hintText: 'Your Email',
        )),
      ],
    );
  }

  Column buildNameAndEmailFieldMobile() {
    return Column(
      children: [
        Expanded(
            child: CustomTextField(
          controller: _nameController,
          getInputBorder: getInputBorder,
          hintText: 'Your Name',
        )),
        const SizedBox(
          height: 12,
        ),
        Expanded(
            child: CustomTextField(
          controller: _emailController,
          getInputBorder: getInputBorder,
          hintText: 'Your Email',
        )),
      ],
    );
  }
}
