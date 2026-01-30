import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class BookJourneyForm extends StatefulWidget {
  const BookJourneyForm({super.key});

  @override
  State<BookJourneyForm> createState() => _BookJourneyFormState();
}

class _BookJourneyFormState extends State<BookJourneyForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _fromController = TextEditingController();
  final _toController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _fromController.dispose();
    _toController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.red),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    );
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      // await sendToWhatsApp();

      // _formKey.currentState!.reset();
    }
  }

  /// WhatsApp number (country code required)
  final String whatsAppNumber = "7897739391";

  Future<void> sendToWhatsApp() async {
    final message =
        """
Hello 👋
Travel enquiry:
Name: ${_nameController.text.trim()}
Email: ${_emailController.text.trim()}
📍 From: ${_fromController.text.trim()}
📍 To: ${_toController.text.trim()}
Message: ${_messageController.text.trim()}
""";

    final encoded = Uri.encodeComponent(message);
    final url = Uri.parse("https://wa.me/$whatsAppNumber?text=$encoded");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 450,
        constraints: BoxConstraints(
          // minWidth: 450,
          maxWidth: 600,
        ),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Full Name
              TextFormField(
                controller: _nameController,
                decoration: _inputDecoration('Full Name'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Full name is required';
                  }
                  if (value.trim().length < 2) {
                    return 'Name must be at least 2 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 14),

              /// Email
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: _inputDecoration('Email Address'),
                validator: (value) {
                  // if (value == null || value.trim().isEmpty) {
                  //   return 'Email is required';
                  // }
                  if (value != null &&
                      value.isNotEmpty &&
                      !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 14),

              /// Phone
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: _inputDecoration('Phone Number'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Phone number is required';
                  }
                  if (!RegExp(r'^[0-9]{10,15}$').hasMatch(value)) {
                    return 'Enter a valid phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 14),

              /// From & To
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _fromController,
                      decoration: _inputDecoration('From (Starting Point)'),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Starting point required';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      controller: _toController,
                      decoration: _inputDecoration('To (Destination)'),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Destination required';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),

              /// Message
              TextFormField(
                controller: _messageController,
                maxLines: 4,
                decoration: _inputDecoration('Message / Special Requirements'),
                validator: (value) {
                  if (value != null && value.isNotEmpty && value.length < 5) {
                    return 'Message should be at least 10 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 22),

              /// Submit Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: const Text(
                    'Submit Inquiry →',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
