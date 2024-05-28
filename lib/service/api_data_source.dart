import 'base_network.dart';

class ApiDataSource {
  static final ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> loadUsers() async {
    final response = await BaseNetwork.get("/users");
    return response as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> loadDetailUser(int userId) async {
    final response = await BaseNetwork.get("/users/$userId");
    return response as Map<String, dynamic>;
  }

  Future<List<dynamic>> loadHouses() async {
    final response = await BaseNetwork.get("/houses");
    return response as List<dynamic>;
  }

  Future<Map<String, dynamic>> loadHouseDetail(String houseId) async {
    final response = await BaseNetwork.get("/houses/$houseId");
    return response as Map<String, dynamic>;
  }

  Future<List<dynamic>> loadIngredients() async {
    final response = await BaseNetwork.get("/ingredients");
    return response as List<dynamic>;
  }

  Future<Map<String, dynamic>> loadIngredientDetail(String ingredientId) async {
    final response = await BaseNetwork.get("/ingredients/$ingredientId");
    return response as Map<String, dynamic>;
  }

  Future<List<dynamic>> loadSpells() async {
    final response = await BaseNetwork.get("/spells");
    return response as List<dynamic>;
  }

  Future<Map<String, dynamic>> loadSpellDetail(String spellId) async {
    final response = await BaseNetwork.get("/spells/$spellId");
    return response as Map<String, dynamic>;
  }

  Future<List<dynamic>> loadWizards() async {
    final response = await BaseNetwork.get("/wizards");
    return response as List<dynamic>;
  }

  Future<Map<String, dynamic>> loadWizardDetail(String wizardId) async {
    final response = await BaseNetwork.get("/wizards/$wizardId");
    return response as Map<String, dynamic>;
  }
}
