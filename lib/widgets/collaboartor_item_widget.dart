import 'package:flutter/material.dart';
import 'package:iger/models/collaboarator_model.dart';
import 'package:iger/screens/detailed_collaborator_screen.dart';
import 'package:iger/utils/translate.dart';

class CollaboratorItemWidget extends StatelessWidget {
  final CollaboratorModel collaborator;
  const CollaboratorItemWidget({
    super.key,
    required this.collaborator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailedCollaboratorScreen(
                collaborator: collaborator,
              ),
            ),
          );
        },
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                child: Text(
                  "${collaborator.firstName[0]}${collaborator.lastName[0]}${collaborator.lastName[collaborator.lastName.length - 1]}"
                      .toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${collaborator.firstName} ${collaborator.lastName}",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                      "${collaborator.talksNumber} ${(collaborator.talksNumber > 1) ? t(context)!.talks.toLowerCase() : t(context)!.talk.toLowerCase()}, ${collaborator.gender}"),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
