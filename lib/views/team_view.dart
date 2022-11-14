import 'package:flutter/material.dart';
import 'package:iger/widgets/collaboartor_item_widget.dart';

class TeamView extends StatelessWidget {
  const TeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CollaboratorItemWidget(
            collaborator: Collaborator(
              firstName: "John",
              lastName: "Doe",
              gender: "Male",
            ),
          ),
          CollaboratorItemWidget(
            collaborator: Collaborator(
              firstName: "Jane",
              lastName: "Doe",
              gender: "Female",
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
