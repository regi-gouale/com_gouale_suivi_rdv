import 'package:flutter/material.dart';
import 'package:iger/models/collaboarator_model.dart';
import 'package:iger/utils/translate.dart';

class AddTalkForm extends StatefulWidget {
  final CollaboratorModel collaborator;
  const AddTalkForm({
    super.key,
    required this.collaborator,
  });

  @override
  State<AddTalkForm> createState() => _AddTalkFormState();
}

class _AddTalkFormState extends State<AddTalkForm> {
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _typeController = TextEditingController();

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
              controller: _titleController,
              decoration: InputDecoration(
                labelText: t(context)!.title,
                hintText: t(context)!.titleHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.titleRequired;
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
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: t(context)!.description,
                hintText: t(context)!.descriptionHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.descriptionRequired;
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
              controller: _dateController,
              decoration: InputDecoration(
                labelText: t(context)!.date,
                hintText: t(context)!.dateHint,
              ),
              onTap: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (date != null) {
                  _dateController.text =
                      date.toLocal().toString().split(' ')[0];
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.dateRequired;
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
              controller: _timeController,
              decoration: InputDecoration(
                labelText: t(context)!.time,
                hintText: t(context)!.timeHint,
              ),
              onTap: () async {
                TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (time != null) {
                  // ignore: use_build_context_synchronously
                  _timeController.text = time.format(context);
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.timeRequired;
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
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: t(context)!.type,
                hintText: t(context)!.typeHint,
              ),
              items: const [
                DropdownMenuItem(
                  value: '1',
                  child: Text("t(context)!.type1"),
                ),
                DropdownMenuItem(
                  value: '2',
                  child: Text("t(context)!.type2"),
                ),
                DropdownMenuItem(
                  value: '3',
                  child: Text("t(context)!.type3"),
                ),
              ],
              onChanged: (value) {
                _typeController.text = value.toString();
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.typeRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(t(context)!.processing),
                          duration: const Duration(milliseconds: 200),
                        ),
                      );
                      // TODO: Create talk

                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(t(context)!.create),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(t(context)!.cancel),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
