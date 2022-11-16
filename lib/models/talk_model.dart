import 'package:iger/models/collaboarator_model.dart';

class TalkModel {
  final String title;
  final String description;
  final DateTime dateTime;
  final String type;
  final String comments;
  final CollaboratorModel collaborator;

  TalkModel( {
    required this.collaborator,
    required this.title,
    required this.description,
    required this.dateTime,
    required this.type,
    required this.comments,
  });
}
