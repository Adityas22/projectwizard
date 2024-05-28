class IngredientModel {
  final String? id;
  final String? name;

  IngredientModel({
    this.id,
    this.name,
  });

  IngredientModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
