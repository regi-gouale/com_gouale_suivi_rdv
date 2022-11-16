import 'package:flutter/material.dart';
import 'package:iger/models/talk_model.dart';
import 'package:iger/utils/translate.dart';

class EditTaskForm extends StatefulWidget {
  const EditTaskForm({
    super.key,
    required this.talk,
  });
  final TalkModel talk;

  @override
  State<EditTaskForm> createState() => _EditTaskFormState();
}

class _EditTaskFormState extends State<EditTaskForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.talk.title;
    _descriptionController.text = widget.talk.description;
    _dateController.text =
        widget.talk.dateTime.toLocal().toString().split(' ')[0];
    _timeController.text =
        widget.talk.dateTime.toLocal().toString().split(' ')[1].split('.')[0];
  }

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
              decoration: InputDecoration(
                labelText: t(context)!.title,
                hintText: t(context)!.titleHint,
              ),
              readOnly: true,
              initialValue: widget.talk.title,
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
              readOnly: true,
              initialValue: widget.talk.description,
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.dateRequired;
                }
                return null;
              },
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                ).then((value) {
                  _dateController.text = value.toString().split(" ")[0];
                });
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.timeRequired;
                }
                return null;
              },
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then((value) {
                  if (value != null) {
                    _timeController.text = value.format(context);
                  }
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
            ),
            child: TextFormField(
              controller: _commentController,
              decoration: InputDecoration(
                labelText: t(context)!.comments,
                hintText: t(context)!.commentsHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.commentsRequired;
                }
                return null;
              },
              minLines: 8,
              maxLines: 16,
              keyboardType: TextInputType.multiline,
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
                      duration: const Duration(seconds: 1),
                    ),
                  );
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
