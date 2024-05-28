class HousesModel {
  final String? id;
  final String? name;
  final String? houseColours;
  final String? founder;
  final String? animal;
  final String? element;
  final String? ghost;
  final String? commonRoom;
  final List<Heads>? heads;
  final List<Traits>? traits;

  HousesModel({
    this.id,
    this.name,
    this.houseColours,
    this.founder,
    this.animal,
    this.element,
    this.ghost,
    this.commonRoom,
    this.heads,
    this.traits,
  });

  HousesModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        houseColours = json['houseColours'] as String?,
        founder = json['founder'] as String?,
        animal = json['animal'] as String?,
        element = json['element'] as String?,
        ghost = json['ghost'] as String?,
        commonRoom = json['commonRoom'] as String?,
        heads = (json['heads'] as List?)
            ?.map((dynamic e) => Heads.fromJson(e as Map<String, dynamic>))
            .toList(),
        traits = (json['traits'] as List?)
            ?.map((dynamic e) => Traits.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'houseColours': houseColours,
        'founder': founder,
        'animal': animal,
        'element': element,
        'ghost': ghost,
        'commonRoom': commonRoom,
        'heads': heads?.map((e) => e.toJson()).toList(),
        'traits': traits?.map((e) => e.toJson()).toList()
      };
}

class Heads {
  final String? id;
  final String? firstName;
  final String? lastName;

  Heads({
    this.id,
    this.firstName,
    this.lastName,
  });

  Heads.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        firstName = json['firstName'] as String?,
        lastName = json['lastName'] as String?;

  Map<String, dynamic> toJson() =>
      {'id': id, 'firstName': firstName, 'lastName': lastName};
}

class Traits {
  final String? id;
  final String? name;

  Traits({
    this.id,
    this.name,
  });

  Traits.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
