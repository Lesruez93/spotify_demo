import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SearchField extends StatelessWidget {
  final String labelText;
  final TextInputType? keyboardType;
  final TextEditingController controller;

  final String? Function(String?)? onChanged;


  const SearchField({
    required this.labelText,
    required this.controller,
    required this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        // padding: const EdgeInsets.only(left: 14, right: 14),
        margin: const EdgeInsets.only(bottom: 16),
        child: FormBuilderTextField(
          style: TextStyle(fontSize: 14),
          maxLines: 1,
          onChanged: onChanged,
          keyboardType: keyboardType ?? TextInputType.text,
          autofocus: false,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 8),
            // Adjust the vertical padding here

            fillColor: Theme.of(context).colorScheme.surface,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            filled: true,
            prefixIcon: Icon(Icons.search),

            hintText: labelText,

            //border: InputBorder(),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintStyle: TextStyle(
              fontSize: 14,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
          name: labelText,
        ));
  }
}
