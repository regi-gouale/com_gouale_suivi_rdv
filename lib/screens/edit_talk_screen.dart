import 'package:flutter/material.dart';
import 'package:iger/forms/edit_talk_form.dart';
import 'package:iger/models/talk_model.dart';

class EditTalkScreen extends StatelessWidget {
  final TalkModel talk;
  const EditTalkScreen({
    super.key,
    required this.talk,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("${talk.collaborator.firstName} ${talk.collaborator.lastName} - ${talk.title}"),
        ),
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.edit),
          // ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // TODO: Delete talk
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Delete ${talk.title}?'),
                    content: const Text(
                        'Are you sure you want to delete this talk?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                        child: const Text('Delete'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: EditTaskForm(
          talk: talk,
        ),
      ),
    );
  }
}
