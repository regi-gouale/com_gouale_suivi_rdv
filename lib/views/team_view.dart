import 'package:flutter/material.dart';
import 'package:iger/forms/add_collaborator_form.dart';
import 'package:iger/models/collaboarator_model.dart';
import 'package:iger/utils/translate.dart';
import 'package:iger/widgets/collaboartor_item_widget.dart';

class TeamView extends StatelessWidget {
  const TeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "John",
              lastName: "Doe",
              gender: "Male",
            ),
          ),
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "Jane",
              lastName: "Doe",
              gender: "Female",
            ),
          ),
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "John",
              lastName: "Doe",
              gender: "Male",
              talksNumber: 4,
            ),
          ),
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "John",
              lastName: "Doe",
              gender: "Male",
            ),
          ),
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "Jane",
              lastName: "Doe",
              gender: "Female",
            ),
          ),
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "John",
              lastName: "Doe",
              gender: "Male",
              talksNumber: 4,
            ),
          ),
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "John",
              lastName: "Doe",
              gender: "Male",
            ),
          ),
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "Jane",
              lastName: "Doe",
              gender: "Female",
            ),
          ),
          CollaboratorItemWidget(
            collaborator: CollaboratorModel(
              firstName: "John",
              lastName: "Doe",
              gender: "Male",
              talksNumber: 4,
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
                title: Text(t(context)!.addCollaborator),
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              body: const SingleChildScrollView(
                child: AddCollaboratorForm(),
              ),
            ),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
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
