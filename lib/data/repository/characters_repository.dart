// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:breaking_bad/data/models/character.dart';
import 'package:breaking_bad/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;
  CharactersRepository(
    this.charactersWebServices,
  );

  Future<List<Character>> getAllCharacters() async{
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map((character) => Character.fromJson(character)).toList();
  }
}
