class DataService {
  Future<bool> existsUsers() {
    return Future.delayed(Duration(seconds: 1), () => true);
  }

  Future<Map<String, dynamic>> getPokemon() {
    return Future.delayed(Duration(seconds: 3), () {
      return {
        'id': 12,
        'name': 'Charizard',
        'type': ['fire', 'pison'],
        'isAvailable': true,
        'stats': {'hp': 109, 'attack': 65}
      };
    });
  }
}
