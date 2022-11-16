import 'package:flutter/material.dart';
import 'package:iger/utils/translate.dart';

class AddCollaboratorForm extends StatefulWidget {
  const AddCollaboratorForm({super.key});

  @override
  State<AddCollaboratorForm> createState() => _AddCollaboratorFormState();
}

class _AddCollaboratorFormState extends State<AddCollaboratorForm> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
            ),
            child: TextFormField(
              controller: _firstNameController,
              decoration: InputDecoration(
                labelText: t(context)!.firstName,
                hintText: t(context)!.firstNameHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.firstNameRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
            ),
            child: TextFormField(
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: t(context)!.lastName,
                hintText: t(context)!.lastNameHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.lastNameRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
            ),
            child: TextFormField(
              controller: _genderController,
              decoration: InputDecoration(
                labelText: t(context)!.gender,
                hintText: t(context)!.genderHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.genderRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
            ),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(t(context)!.processing),
                      duration: const Duration(milliseconds: 200),
                    ),
                  );

                  // TODO: Add collaborator

                  Navigator.of(context).pop();
                }
              },
              child: Text(t(context)!.save),
            ),
          ),
        ],
      ),
    );
  }
}
