class WizardModel {
  final List<Elixirs>? elixirs;
  final String? id;
  final dynamic firstName;
  final String? lastName;

  WizardModel({
    this.elixirs,
    this.id,
    this.firstName,
    this.lastName,
  });

  WizardModel.fromJson(Map<String, dynamic> json)
      : elixirs = (json['elixirs'] as List?)
            ?.map((dynamic e) => Elixirs.fromJson(e as Map<String, dynamic>))
            .toList(),
        id = json['id'] as String?,
        firstName = json['firstName'],
        lastName = json['lastName'] as String?;

  Map<String, dynamic> toJson() => {
        'elixirs': elixirs?.map((e) => e.toJson()).toList(),
        'id': id,
        'firstName': firstName,
        'lastName': lastName
      };
}

class Elixirs {
  final String? id;
  final String? name;

  Elixirs({
    this.id,
    this.name,
  });

  Elixirs.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
