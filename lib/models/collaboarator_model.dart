class CollaboratorModel {
  String firstName;
  String lastName;
  String gender;
  int talksNumber = 0;

  CollaboratorModel({
    required this.firstName,
    required this.lastName,
    required this.gender,
    this.talksNumber = 0,
  });
}
