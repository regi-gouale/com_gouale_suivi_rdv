import 'package:flutter/material.dart';
import 'package:iger/forms/add_talk_form.dart';
import 'package:iger/models/collaboarator_model.dart';
import 'package:iger/models/talk_model.dart';
import 'package:iger/utils/translate.dart';
import 'package:iger/widgets/talk_resume_widget.dart';

class DetailedCollaboratorScreen extends StatelessWidget {
  const DetailedCollaboratorScreen({
    super.key,
    required this.collaborator,
  });
  final CollaboratorModel collaborator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${collaborator.firstName} ${collaborator.lastName}",
        ),
      ),
      body: ListView(
        children: [
          TalkResumeWidget(
            talk: TalkModel(
              title: "Talk title",
              description: "Talk description",
              dateTime: DateTime.now(),
              comments: "Talk comments",
              type: "Talk type",
              collaborator: collaborator,
            ),
          ),
          TalkResumeWidget(
            talk: TalkModel(
              title: "Talk title",
              description: "Talk description",
              dateTime: DateTime.now(),
              comments: "Talk comments",
              type: "Talk type",
              collaborator: collaborator,
            ),
          ),
          TalkResumeWidget(
            talk: TalkModel(
              title: "Talk title",
              description: "Talk description",
              dateTime: DateTime.now(),
              comments: "Talk comments",
              type: "Talk type",
              collaborator: collaborator,
            ),
          ),
          TalkResumeWidget(
            talk: TalkModel(
              title: "Talk title",
              description: "Talk description",
              dateTime: DateTime.now(),
              comments: "Talk comments",
              type: "Talk type",
              collaborator: collaborator,
            ),
          ),
          TalkResumeWidget(
            talk: TalkModel(
              title: "Talk title",
              description: "Talk description",
              dateTime: DateTime.now(),
              comments: "Talk comments",
              type: "Talk type",
              collaborator: collaborator,
            ),
          ),
          TalkResumeWidget(
            talk: TalkModel(
              title: "Talk title",
              description: "Talk description",
              dateTime: DateTime.now(),
              comments: "Talk comments",
              type: "Talk type",
              collaborator: collaborator,
            ),
          ),
          TalkResumeWidget(
            talk: TalkModel(
              title: "Talk title",
              description: "Talk description",
              dateTime: DateTime.now(),
              comments: "Talk comments",
              type: "Talk type",
              collaborator: collaborator,
            ),
          ),
          TalkResumeWidget(
            talk: TalkModel(
              title: "Talk title",
              description: "Talk description",
              dateTime: DateTime.now(),
              comments: "Talk comments",
              type: "Talk type",
              collaborator: collaborator,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            elevation: 10,
            context: context,
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text("${t(context)!.addNewTalk} - ${collaborator.firstName} ${collaborator.lastName}"),
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              body: SingleChildScrollView(
                child: AddTalkForm(
                  collaborator: collaborator,
                ),
              ),
            ),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.primary,
          size: 30,
        ),
      ),
    );
  }
}
