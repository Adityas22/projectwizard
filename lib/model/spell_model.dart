class SpellModel {
  final String? id;
  final String? name;
  final String? incantation;
  final String? effect;
  final bool? canBeVerbal;
  final String? type;
  final String? light;
  final dynamic creator;

  SpellModel({
    this.id,
    this.name,
    this.incantation,
    this.effect,
    this.canBeVerbal,
    this.type,
    this.light,
    this.creator,
  });

  SpellModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        incantation = json['incantation'] as String?,
        effect = json['effect'] as String?,
        canBeVerbal = json['canBeVerbal'] as bool?,
        type = json['type'] as String?,
        light = json['light'] as String?,
        creator = json['creator'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'incantation': incantation,
        'effect': effect,
        'canBeVerbal': canBeVerbal,
        'type': type,
        'light': light,
        'creator': creator
      };
}
